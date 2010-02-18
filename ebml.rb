#!/usr/bin/ruby

#
# Distributed under the MIT license
# see the file COPYING for details
# or visit http://www.opensource.org/licenses/mit-license.php
#
# $Id: ebml.rb 787 2004-09-12 15:28:30Z mosu $
#
# A simple EBML parser based loosely on libebml and other
# EBML implementations. It also contains classes for the global EBML
# elements mentioned on # http://www.matroska.org/technical/specs/index.html
#
# Written by Moritz Bunkus <moritz@bunkus.org>.
#

module Ebml
  def Ebml.coded_size(s)
    if (s <= 0x0000007f)
      return 1
    elsif (s <= 0x00003fff)
      return 2
    elsif (s <= 0x001fffff)
      return 3
    elsif (s <= 0x0fffffff)
      return 4
    elsif (s <= 0x00000007ffffffff)
      return 5
    elsif (s <= 0x000003ffffffffff)
      return 6
    elsif (s <= 0x0001ffffffffffff)
      return 7
    else
      return 8
    end
  end

  class Error < RuntimeError
  end

  class IdError < Error
  end

  class DataError < Error
  end

  class Id
    attr_accessor :value
    attr_accessor :size

    def initialize(value, size)
      @value = value
      @size = size
    end

    def ==(id)
      return false if ((id == nil) or (id.class != Id))
      return ((value == id.value) and (size == id.size))
    end

    def to_s
      format = "(0x%0" + (@size * 2).to_s + "x, %d)"
      return sprintf(format, @value, @size)
    end

    def Id.none
      @@none = Id.new(-1, -1)
      return @@none
    end
  end                           # class Id

  class Element
    attr_reader :id
    attr_reader :pos
    attr_reader :data_size
    attr_reader :size_length

    def initialize(id, pos, data_size, size_length)
      @id = id
      @pos = pos
      @data_size = data_size
      @size_length = size_length
    end

    def Element.global_id
      return Id.none
    end

    def head_size
      return @id.size +
        (@size_length == -1 ? Ebml.coded_size(@data_size) : @size_length)

    end

    def element_size
      return @data_size + head_size
    end

    def force_size_length(size_length)
      @size_length = size_length
    end

    def skip(ef)
      ef.io.seek(@pos + element_size, IO::SEEK_SET)
    end

    def read(ef)
      skip(ef)

      return self
    end

    def to_s
      return sprintf("[%s @ 0x%08x size 0x%08x]", id.to_s, @pos,
                      @element_size)
    end

    def update_size
      return @data_size if (@size_length == -1)
      coded_size = Ebml.coded_size(@data_size)
      @size_length = coded_size if (coded_size > @size_length)
      return @data_size
    end

    def master?
      return false
    end

    def write(f)
      update_size
      write_head(f)
      write_data(f)
    end

    def write_head(f)
      raise IdError, "Refusing to write unset EbmlIds." if (id == Id.none)

      a = Array.new
      shift = (id.size - 1) * 8
      mask = 0xff << shift
      id.size.downto(1) do
        a.push((id.value & mask) >> shift)
        shift -= 8
        mask >>= 8
      end
      f.io.write(a.pack("C*"))

      length = @size_length
      length = Ebml.coded_size(@data_size) if (length == -1)

      a = Array.new
      size_mod = 0x80 >> (length - 1)
      shift = (length - 1) * 8
      mask = 0xff << shift
      length.downto(1) do
        a.push(((@data_size & mask) >> shift) | size_mod)
        shift -= 8
        mask >>= 8
        size_mod = 0
      end
      f.io.write(a.pack("C*"))
    end
  end

  require "ebml/binary"
  require "ebml/date"
  require "ebml/dummy"
  require "ebml/float"
  require "ebml/master"
  require "ebml/sinteger"
  require "ebml/string"
  require "ebml/uinteger"
  require "ebml/unicodestring"

  require "ebml/file"

  class Head < Master
    def Head.global_id
      @@id ||= Id.new(0x1a45dfa3, 4)
      return @@id
    end
  end                           # class Head

  class Version < UInteger
    def Version.global_id
      @@id ||= Id.new(0x4286, 2)
      return @@id
    end
  end                           # class Version

  class ReadVersion < UInteger
    def ReadVersion.global_id
      @@id ||= Id.new(0x42f7, 2)
      return @@id
    end
  end                           # class ReadVersion

  class MaxIdLength < UInteger
    def MaxIdLength.global_id
      @@id ||= Id.new(0x42f2, 2)
      return @@id
    end
  end                           # class MaxIdLength

  class MaxSizeLength < UInteger
    def MaxSizeLength.global_id
      @@id ||= Id.new(0x42f3, 2)
      return @@id
    end
  end                           # class MaxSizeLength

  class DocType < Ebml::String
    def DocType.global_id
      @@id ||= Id.new(0x4282, 2)
      return @@id
    end
  end                           # class DocType

  class DocTypeVersion < UInteger
    def DocTypeVersion.global_id
      @@id ||= Id.new(0x4287, 2)
      return @@id
    end
  end                           # class DocTypeVersion

  class DocTypeReadVersion < UInteger
    def DocTypeReadVersion.global_id
      @@id ||= Id.new(0x4285, 2)
      return @@id
    end
  end                           # class DocTypeVersion

  class CRC32 < Binary
    def CRC32.global_id
      @@id ||= Id.new(0xbf, 1)
      return @@id
    end                         # class CRC32
  end

  class Void < Binary
    def Void.global_id
      @@id ||= Id.new(0xec, 1)
      return @@id
    end

    def read(ef)
      skip(ef)
    end

    def write_data(ef)
      1.upto(@data_size) do
        ef.io.write([0].pack("C"))
      end
    end

    def update_size
      return @data_size
    end
  end                           # class Void
end
