# -*- ruby -*-

require 'rubygems'
require 'inline'

spec = Gem::Specification.new do |s|

  s.name = 'RubyInline'
  s.version = Inline::VERSION
  s.summary = "Multi-language extension coding within ruby."

  paragraphs = File.read("README.txt").split(/\n\n+/)
  puts paragraphs[3]

  # TOOD: make this auto-extract from README.txt
  s.description = paragraphs[3]

  s.requirements << "A POSIX environment and a compiler for your language."
  s.files = IO.readlines("Manifest.txt").map {|f| f.chomp }

  s.require_path = '.' 
  s.autorequire = 'inline'

  s.has_rdoc = false                            # I SUCK - TODO
  s.test_suite_file = "test_inline.rb"

  s.author = "Ryan Davis"
  s.email = "ryand-ruby@zenspider.com"
  s.homepage = "http://www.zenspider.com/ZSS/Products/RubyInline/"
  s.rubyforge_project = "rubyinline"
end