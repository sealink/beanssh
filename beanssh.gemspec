# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'beanssh/version'

Gem::Specification.new do |spec|
  spec.name          = "beanssh"
  spec.version       = Beanssh::VERSION
  spec.authors       = ["Michael Smirnoff"]
  spec.email         = ["michael.smirnoff@sealink.com.au"]

  spec.summary       = %q{Runs SSH login to chosen EB instance}
  spec.description   = %q{Runs SSH login to chosen EB instance}
  spec.homepage      = "https://github.com/sealink/beanssh"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }

  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "aws-sdk", '~> 2' # For AWS API
  spec.add_dependency "highline"        # For user interaction

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
