#!/usr/bin/ruby

#
# Distributed under the MIT license
# see the file COPYING for details
# or visit http://www.opensource.org/licenses/mit-license.php
#
# $Id: float.rb 787 2004-09-12 15:28:30Z mosu $
#
# A simple EBML parser based loosely on libebml and other
# EBML implementations. It also contains classes for the global EBML
# elements mentioned on # http://www.matroska.org/technical/specs/index.html
#
# Written by Moritz Bunkus <moritz@bunkus.org>.
#

module Ebml
  class Float < Element
    attr_accessor :double_precision
    attr_accessor :value

    def initialize(id, pos, data_size, size_length)
      super
      @double_precision = data_size == 8
    end

    def read(ef)
      ins = ef.io.read(@data_size)
      raise EOFError if (ins.size < @data_size)
      @value = ins.unpack(double_precision ? "G" : "g")[0]

      return self
    end

    def write_data(ef)
      ef.io.write([@value].pack(double_precision ? "G" : "g"))
    end

    def to_f
      @value ||= 0.0
      return @value
    end

    def to_s
      return sprintf("%f", to_f)
    end

    def update_size
      @data_size = double_precision ? 8 : 4
      return super
    end
  end                           # class Float

end                             # module Ebml
