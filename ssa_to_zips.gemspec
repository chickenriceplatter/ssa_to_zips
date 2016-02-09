# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ssa_to_zips/version'

Gem::Specification.new do |spec|
  spec.name          = "ssa_to_zips"
  spec.version       = SsaToZips::VERSION
  spec.authors       = ["chickenriceplatter"]
  spec.email         = ["chickenriceplatter@gmail.com"]

  spec.summary       = %q{A tool that maps ssa county codes to zip codes.}
  spec.description   = %q{A tool that maps ssa county codes to zip codes.}
  spec.homepage      = "https://github.com/chickenriceplatter/ssa_to_zips"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
