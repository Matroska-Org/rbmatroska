#!/usr/bin/ruby

#
# Distributed under the MIT license
# see the file COPYING for details
# or visit http://www.opensource.org/licenses/mit-license.php
#
# $Id: date.rb 781 2004-09-11 17:48:34Z mosu $
#
# A simple EBML parser based loosely on libebml and other
# EBML implementations. It also contains classes for the global EBML
# elements mentioned on # http://www.matroska.org/technical/specs/index.html
#
# Written by Moritz Bunkus <moritz@bunkus.org>.
#

require "ebml/uinteger"

module Ebml
  class Date < UInteger
    def to_s
      @value ||= 0
      return Time.at(@value / 1000000000).to_s
    end
  end                           # class Date

end                             # module Ebml
