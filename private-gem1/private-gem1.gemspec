# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'private/gem1/version'

Gem::Specification.new do |spec|
  spec.name          = "private-gem1"
  spec.version       = Private::Gem1::VERSION
  spec.authors       = ["Tim Moore"]
  spec.email         = ["tmoore@incrementalism.net"]
  spec.summary       = %q{The first gem.}
  spec.description   = %q{See https://github.com/bundler/bundler/issues/3224}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "celluloid-eventsource", "~> 0.2.0"
  spec.add_runtime_dependency "faraday"
  spec.add_runtime_dependency "oj"
  spec.add_runtime_dependency "websocket-client-simple"
end
