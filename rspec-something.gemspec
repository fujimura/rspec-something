# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/something/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec-something"
  spec.version       = Rspec::Something::VERSION
  spec.authors       = ["Fujimura Daisuke"]
  spec.email         = ["me@fujimuradaisuke.com"]
  spec.description   = %q{Something expects one message in your example}
  spec.summary       = %q{Something expects one message in your example}
  spec.homepage      = "https://github.com/fujimura/rspec-something"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rspec", "~> 3"

  spec.add_development_dependency "bundler", "~> 2"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec-expectations", ">= 3"
end
