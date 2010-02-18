#!/usr/bin/ruby

#
# Distributed under the MIT license
# see the file COPYING for details
# or visit http://www.opensource.org/licenses/mit-license.php
#
# $Id: master.rb 787 2004-09-12 15:28:30Z mosu $
#
# A simple EBML parser based loosely on libebml and other
# EBML implementations. It also contains classes for the global EBML
# elements mentioned on # http://www.matroska.org/technical/specs/index.html
#
# Written by Moritz Bunkus <moritz@bunkus.org>.
#

module Ebml
  class Master < Element
    attr_reader :children

    def initialize(id, pos, data_size, size_length)
      super
      @children = Array.new
    end

    def read(ef)
      @children = Array.new

      size_left = data_size
      while (size_left > 0)
        e = ef.read_element_head
        if (e.class != NilClass)
          e.read(ef)
          @children.push(e)
          size_left -= e.element_size
          e.skip(ef)
        else
          break
        end
      end

      return self
    end

    def write_data(ef)
      @children.each do |c|
        c.write_head(ef)
        c.write_data(ef)
      end
    end

    def each(filter = Id.none)
      @children.each do |c|
        yield(c) if ((filter == Id.none) or (filter == c.id))
      end
    end

    def find(filter)
      id = nil
      if (filter.class == Class)
        id = filter.global_id
      else
        id = filter
      end
      @children.each { |c| return c if (c.id == id) }
      return nil
    end

    def to_s
      s = "{" + self.class.name + " " + super + " "
      @children.each { |c| s += c.to_s + " " }
      return s + "}"
    end

    def update_size
      @data_size = 0
      @children.each { |c| @data_size += c.update_size + c.head_size }
      return super
    end

    def push(c)
      @children.push(c)
      return self
    end

    def clear
      @children = Array.new
      return self
    end

    def master?
      return true
    end
  end                           # class Master

end                             # module Ebml
