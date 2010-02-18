#!/usr/bin/ruby

#
# Distributed under the MIT license
# see the file COPYING for details
# or visit http://www.opensource.org/licenses/mit-license.php
#
# $Id: utilstest.rb 782 2004-09-11 18:13:43Z mosu $
#
# A test application for the Matroska::Utils classes.
#
# Written by Moritz Bunkus <moritz@bunkus.org>.
#

require "ebml"
require "matroska/utils"

ebml = Ebml::File.new(nil)
ebml.map_ids("Matroska")

ARGV.each do |name|
  io = File.new(name)
  f = Matroska::Utils::File.new(io)
  f.parse.each do |e|
    puts("Id " + e.id.to_s + " at " + e.pos.to_s + ", name " +
          ebml.find_class_for_id(e.id).name)
  end

  io.close
end
