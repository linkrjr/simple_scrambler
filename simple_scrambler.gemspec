# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_scrambler/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_scrambler"
  spec.version       = SimpleScrambler::Version::STRING
  spec.authors       = ["Ron Gomes"]
  spec.email         = ["rongomes15@gmail.com"]
  spec.description   = %q{Simple Scrambler is an implementation of some examples of Substitution cipher. It includes implementations for Zenit Polar, ROT13 and ROT47}
  spec.summary       = %q{Simple Scrambler implements Substitution Scramblers like Zenit Polar, ROT13 and ROT47}
  spec.homepage      = "https://github.com/linkrjr/simple_scrambler.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'fuubar'
  spec.add_development_dependency 'codeclimate-test-reporter'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake'
  
  spec.add_dependency 'activesupport', ['>= 8.1.2']
end
