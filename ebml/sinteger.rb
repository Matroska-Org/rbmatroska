#!/usr/bin/ruby

#
# Distributed under the MIT license
# see the file COPYING for details
# or visit http://www.opensource.org/licenses/mit-license.php
#
# $Id: sinteger.rb 787 2004-09-12 15:28:30Z mosu $
#
# A simple EBML parser based loosely on libebml and other
# EBML implementations. It also contains classes for the global EBML
# elements mentioned on # http://www.matroska.org/technical/specs/index.html
#
# Written by Moritz Bunkus <moritz@bunkus.org>.
#

module Ebml
  class SInteger < Element
    attr_accessor :value

    def read(ef)
      byte = ef.io.readchar
      if ((byte & 0x80) == 0x80)
        @value = -1 << 8
      else
        @value = 0
      end
      @value |= byte
      2.upto(@data_size) do |i|
        byte = ef.io.readchar
        @value = (@value << 1) | byte
      end

      return self
    end

    def write_data(ef)
      a = Array.new
      shift = ((@data_size - 1) * 8)
      mask = 0xff << shift
      @data_size.downto(1) do
        a.push((@value & mask) >> shift)
        shift -= 8
        mask >>= 8
      end
      ef.io.write(a.pack("C*"))
    end

    def update_size
      @value ||= 0
      if ((@value <= 0x7f) and (@value >= (-0x80)))
        @data_size = 1
      elsif ((@value <= 0x7fff) and (@value >= (-0x8000)))
        @data_size = 2
      elsif ((@value <= 0x7fffff) and (@value >= (-0x800000)))
        @data_size = 3
      elsif ((@value <= 0x7fffffff) and (@value >= (-0x80000000)))
        @data_size = 4
      elsif ((@value <= 0x7fffffffff) and (@value >= -0x8000000000))
        @data_size = 5
      elsif ((@value <= 0x7fffffffffff) and (@value >= -0x800000000000))
        @data_size = 6
      elsif ((@value <= 0x7fffffffffffff) and (@value >= -0x80000000000000))
        @data_size = 7
      else
        @data_size = 8
      end

      return super
    end
      
    def to_i
      @value ||= 0
      return @value
    end

    def to_s
      return to_i.to_s
    end

  end                           # class SInteger

end                             # module Ebml

