#!/usr/bin/ruby

#
# Distributed under the MIT license
# see the file COPYING for details
# or visit http://www.opensource.org/licenses/mit-license.php
#
# $Id: utils.rb 784 2004-09-12 09:31:21Z mosu $
#
# A utility class for easy access to a Matroska file.
#
# Written by Moritz Bunkus <moritz@bunkus.org>.
#

require "ebml"
require "matroska"

module Matroska
module Utils
  class SegmentElement
    attr_accessor :id
    attr_accessor :pos

    def initialize(id, pos)
      @id = id
      @pos = pos
    end
  end

  class File
    def initialize(io)
      @io = io
      @elements = Array.new
    end                         # def initialize

    def add_element(id, pos)
      @elements.each { |e| return if (e.pos == pos) }
      @elements.push(SegmentElement.new(id, pos))
    end

    def parse(fully = false)
      @elements = Array.new

      f = Ebml::File.new(@io)
      f.map_ids("Matroska")
      @io.pos = 0

      element = f.read_element_head
      if ((element.class == NilClass) or
         (element.class.global_id != Ebml::Head.global_id))
        raise Ebml::DataError, "No EBML file"
      end
      segment_offset = 0
      while (true)
        element.skip(f)
        element = f.read_element_head
        break if (element.class == NilClass)
        if (element.class == Matroska::Segment)
          segment_offset = element.pos + element.head_size

          segelement = f.read_element_head
          while ((segelement != nil) and
                  (fully or (segelement.id != Matroska::Cluster.global_id)))
            add_element(segelement.id, segelement.pos)
            segelement.skip(f)
            segelement = f.read_element_head
          end                   # while (segelement...
        end                     # if (element.class...)
      end                       # while (true)

      @elements.each do |e|
        next unless (e.id == Matroska::SeekHead.global_id)
        f.io.pos = e.pos
        f.read_element_head.read(f).each(Matroska::Seek.global_id) do |s|
          id = s.target_id
          pos = s.target_pos
          add_element(id, pos + segment_offset) if (id and pos)
        end                     # sh.each
      end                       # @elements.each

      return sort
    end                         # def parse

    def each(filter = Ebml::Id.none)
      @elements.each do |e|
        yield(e) if ((filter == Ebml::Id.none) or (filter == e.id))
      end
    end                         # def each

    def sort
      @elements.sort! { |a, b| a.pos <=> b.pos }
      return self
    end                         # def sort

  end                           # class File

end                             # module Utils
end                             # module Matroska
