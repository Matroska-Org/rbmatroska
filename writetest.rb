#!/usr/bin/ruby

#
# Distributed under the MIT license
# see the file COPYING for details
# or visit http://www.opensource.org/licenses/mit-license.php
#
# $Id: writetest.rb 787 2004-09-12 15:28:30Z mosu $
#
# Written by Moritz Bunkus <moritz@bunkus.org>.
#

require "ebml"

ARGV.each do |name|
  io = File.new(name)
  f = Ebml::File.new(io)
  f.map_ids("Matroska")

  element = f.read_element_head
  if ((element.class == NilClass) or
     (element.class.global_id != Ebml::Head.global_id))
    puts("No EBML file")
    exit(1)
  end
  element.read(f)

  iout = File.new("output.mkv", "w")
  fout = Ebml::File.new(iout)

  while (true)
    element.write(fout)
    element = f.read_element_head
    break if (element.class == NilClass)
    element.read(f)
  end

  io.close
  iout.close
end
