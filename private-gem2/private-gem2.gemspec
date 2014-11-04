# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'private/gem2/version'

Gem::Specification.new do |spec|
  spec.name          = "private-gem2"
  spec.version       = Private::Gem2::VERSION
  spec.authors       = ["Tim Moore"]
  spec.email         = ["tmoore@incrementalism.net"]
  spec.summary       = %q{The second gem.}
  spec.description   = %q{See https://github.com/bundler/bundler/issues/3224}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "private-gem1", "= 0.0.7"
  spec.add_runtime_dependency "faraday"
  spec.add_runtime_dependency "rack"
end
