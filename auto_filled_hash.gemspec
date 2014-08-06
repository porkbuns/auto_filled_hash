# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'auto_filled_hash/version'

Gem::Specification.new do |spec|
  spec.name          = "auto_filled_hash"
  spec.version       = AutoFilledHash::VERSION
  spec.authors       = ["Hsiu-Fan Wang"]
  spec.email         = ["hfwang@porkbuns.net"]
  spec.summary       = %q{Simple gem that adds some sugar to the Rails Flash classes}
  spec.description   = %q{Adds methods for adding error, notice, warning and success flashes to Flash and FlashNow.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = [".gitignore", "Gemfile", "LICENSE.txt", "README.md", "Rakefile", "auto_filled_hash.gemspec", "lib/auto_filled_hash.rb", "lib/auto_filled_hash/version.rb"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
