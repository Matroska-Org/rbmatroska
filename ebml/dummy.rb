#!/usr/bin/ruby

#
# Distributed under the MIT license
# see the file COPYING for details
# or visit http://www.opensource.org/licenses/mit-license.php
#
# $Id: dummy.rb 785 2004-09-12 09:34:24Z mosu $
#
# A simple EBML parser based loosely on libebml and other
# EBML implementations. It also contains classes for the global EBML
# elements mentioned on # http://www.matroska.org/technical/specs/index.html
#
# Written by Moritz Bunkus <moritz@bunkus.org>.
#

module Ebml
  class Dummy < Binary
    def to_s
      @value ||= Array.new
      return "[dummy id #{@id} size #{@data_size}]"
    end
  end                           # class Binary

end                             # module Ebml
