#!/usr/bin/ruby

#
# Distributed under the MIT license
# see the file COPYING for details
# or visit http://www.opensource.org/licenses/mit-license.php
#
# $Id: matroska.rb 782 2004-09-11 18:13:43Z mosu $
#
# Extensions of the base Matroska classes.
#
# Written by Moritz Bunkus <moritz@bunkus.org>.
#

require "ebml"
require "matroska/baseclasses.rb"

module Matroska
  class Seek
    def target_id
      e = find(SeekID)
      return e.to_id if (e)
      return Ebml::Id.none
    end

    def target_pos
      e = find(SeekPosition)
      return e.to_i if (e)
      return nil
    end
  end                           # class Seek

  class SeekID
    def to_id
      if ((@data_size > 4) or (@data_size < 1))
        raise DataError, "Data size invalid for an Ebml::Id"
      end
      v = 0
      @value.unpack("C*").each { |b| v = (v << 8) + b }
      return Ebml::Id.new(v, @data_size)
    end
  end                           # class SeekID
end                             # module Matroska
