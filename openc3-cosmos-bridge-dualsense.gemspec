# encoding: ascii-8bit

# Copyright 2026 OpenC3, Inc.
# All Rights Reserved.
#
# This file may only be used under the terms of a commercial license
# purchased from OpenC3, Inc.
#
# The development of this software was funded in-whole or in-part by MethaneSAT LLC.

spec = Gem::Specification.new do |s|
  s.name = 'openc3-cosmos-bridge-dualsense'
  s.summary = 'OpenC3 COSMOS DualSense Bridge plugin'
  s.description = <<-EOF
    Adds an interface to a PS5 DualSense Controller to COSMOS for use by a bridge
  EOF
  s.licenses = ['AGPL-3.0-only', 'Nonstandard']
  s.authors = ['Ryan Melton']
  s.email = ['ryan@openc3.com']
  s.homepage = 'https://github.com/OpenC3/openc3'
  s.platform = Gem::Platform::RUBY

  if ENV['VERSION']
    s.version = ENV['VERSION'].dup
  else
    time = Time.now.strftime("%Y%m%d%H%M%S")
    s.version = '0.0.0' + ".#{time}"
  end
  s.files = Dir.glob("{targets,lib,tools,microservices,public}/**/*") + %w(Rakefile README.md LICENSE.txt bridge.txt)
  s.metadata = {
    "source_code_uri" => "https://github.com/OpenC3/openc3-cosmos-bridge-dualsense",
    "openc3_store_title" => "PS5 DualSense Controller",
    "openc3_store_keywords" => "bridge, human interface, hid, ps5, playstation, dualsense",
    "openc3_store_image" => "public/store_img.jpg",
    "openc3_store_access_type" => "public",
    "openc3_cosmos_minimum_version" => "6.0.0"
  }

  s.add_dependency 'openc3-cosmos-bridge-hidapi'
end
