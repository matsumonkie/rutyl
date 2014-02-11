# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rutyl/version'

Gem::Specification.new do |spec|
  spec.name          = "rutyl"
  spec.version       = Rutyl::VERSION
  spec.authors       = ["Iori Matsuhara"]
  spec.email         = ["matsuhar@gmail.com"]
  spec.description   = "ruby utilities tools"
  spec.summary       = "ruby utilities tools"
  spec.homepage      = "https://github.com/matsumonkie/rutyl"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
