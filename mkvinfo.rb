#!/usr/bin/ruby

#
# Distributed under the MIT license
# see the file COPYING for details
# or visit http://www.opensource.org/licenses/mit-license.php
#
# $Id: mkvinfo.rb 786 2004-09-12 10:07:43Z mosu $
#
# A Matroska file parsing information tool. It'll read
# all elements as they're found and output the resulting
# tree including the element contents.
#
# Written by Moritz Bunkus <moritz@bunkus.org>.
#

require "ebml"

def dump_rec(element, level = 0)
  print("|") if (level > 1)
  1.upto(level - 1) { print(" ") }
  print("+ ") if (level > 0)
  print(element.class.name.gsub(/^Ebml::/, "Ebml").gsub(/^Matroska::/, ""))
  if (!element.master?)
    print(" (" + element.to_s + ")")
  end
  puts(" at " + element.pos.to_s)
  if (element.master?)
    element.children.each { |c| dump_rec(c, level + 1) }
  end
end

def handle_segment(element, f)
  dump_rec(element)  
  while (true)
    element = f.read_element_head
    return if (element.class == NilClass)
    element.read(f)
    dump_rec(element, 1)
  end
end

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
  dump_rec(element)

  while (true)
    element.skip(f)
    element = f.read_element_head
    break if (element.class == NilClass)
    if (element.class == Matroska::Segment)
      handle_segment(element, f)
    else
      dump_rec(element)
    end
  end

  io.close
end
