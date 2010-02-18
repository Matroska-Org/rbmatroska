#!/usr/bin/ruby

#
# Distributed under the MIT license
# see the file COPYING for details
# or visit http://www.opensource.org/licenses/mit-license.php
#
# $Id: file.rb 785 2004-09-12 09:34:24Z mosu $
#
# A simple EBML parser based loosely on libebml and other
# EBML implementations. It also contains classes for the global EBML
# elements mentioned on # http://www.matroska.org/technical/specs/index.html
#
# Written by Moritz Bunkus <moritz@bunkus.org>.
#

module Ebml
  class File
    attr_reader :io

    def initialize(io)
      @io = io
    end

    def entity_size?(byte, mask_bits = false)
      size = 0
      mask = 0
      if ((byte & 0x80) == 0x80)
        size = 1
        mask = 0x7f
      elsif ((byte & 0xc0) == 0x40)
        size = 2
        mask = 0x3f
      elsif ((byte & 0xe0) == 0x20)
        size = 3
        mask = 0x1f
      elsif ((byte & 0xf0) == 0x10)
        size = 4
        mask = 0x0f
      elsif ((byte & 0xf8) == 0x08)
        size = 5
        mask = 0x07
      elsif ((byte & 0xfc) == 0x04)
        size = 6
        mask = 0x03
      elsif ((byte & 0xfe) == 0x02)
        size = 7
        mask = 0x01
      elsif (byte == 1)
        size = 8
        mask = 0x00
      else
        raise DataError
      end
      byte = byte & mask if (mask_bits)
      return [size, byte]
    end

    def read_id
      id = 0

      byte = @io.getc
      return nil if (byte == nil)

      esize = entity_size?(byte)
      raise IdError if (esize[0] > 4)
      id = esize[1]

      1.upto(esize[0] - 1) do |i|
        byte = @io.readchar
        id = id * 256 + byte
      end
      return Id.new(id, esize[0])
    end

    def read_size
      byte = @io.getc
      return nil if (byte == nil)

      esize = entity_size?(byte, true)

      size = esize[1]
      1.upto(esize[0] - 1) do
        byte = @io.readchar
        size = size * 256 + byte
      end
      return [size, esize[0]]
    end

    def read_element_head
      pos = @io.pos
      id = read_id
      return nil if (id.class == NilClass)
      size = read_size
      return nil if (size.class == NilClass)
      return find_class_for_id(id).new(id, pos, size[0], size[1])
    end

    def map_ids(namespace = nil)
      @id_mapping = Hash.new

      rebml = Regexp.new("^Ebml::")
      rns = nil
      if (namespace != nil)
        require namespace.downcase
        rns = Regexp.new("^#{namespace}::")
      end
      ObjectSpace.each_object(Class) do |c|
        if (((rebml =~ c.name) or ((rns != nil) and (rns =~ c.name))) and
           (c.respond_to?("global_id")))
          @id_mapping[c.global_id.value] = c
        end
      end
    end

    def find_class_for_id(id)
      raise Error, "IDs not mapped" unless (@id_mapping)
      return @id_mapping[id.value] if (@id_mapping.has_key?(id.value))
      return Dummy
    end
  end                           # class File

end                             # module Ebml
