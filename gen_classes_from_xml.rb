require 'net/http'
require 'rexml/document'

# spec data
url = 'https://raw.github.com/Matroska-Org/foundation-source/master/spectool/specdata.xml'

# get the XML data as a string
xml_data = Net::HTTP.get_response(URI.parse(url)).body

# parse it as XML
doc = REXML::Document.new(xml_data)

puts <<'EOF'
#!/usr/bin/ruby

#
# Distributed under the MIT license
# see the file COPYING for details
# or visit http://www.opensource.org/licenses/mit-license.php
#
# \$Id\$
#
# Classes for the "Matroska EBML doc type". Generated with
# gen_classes_from_xml.rb.
#
# Written by Moritz Bunkus <moritz@bunkus.org>.
#

# This file is generated automatically by the
# gen_classes_from_xml.rb script and should not be
# modified manually!

require "ebml"

module Matroska
EOF

classnames = {
  'master' => 'Ebml::Master',
  'uinteger' => 'Ebml::UInteger',
  'integer' => 'Ebml::SInteger',
  'string' => 'Ebml::String',
  'utf-8' => 'Ebml::UnicodeString',
  'binary' => 'Ebml::Binary',
  'float' => 'Ebml::Float',
  'date' => 'Ebml::Date'
}

# extract each element and convert to a class definition
doc.elements.each('table/element') do |ele|
  name = ele.attributes['name'].sub('-', '_')
  type = ele.attributes['type']
  parent = classnames[type]
  id = Integer(ele.attributes['id'])
  length = case when id<=0xFF then 1 when id<=0xFFFF then 2 when id<=0xFFFFFF then 3 else 4 end
  puts <<"EOF"
  class #{name} < #{parent}
    def #{name}.global_id
      @@id ||= Ebml::Id.new(0x#{id.to_s(16)}, #{length})
      return @@id
    end
  end

EOF
end

puts "end"
