# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'scrawls/httpengine/httprecognizer/version'

Gem::Specification.new do |spec|
  spec.name          = "scrawls-httpengine-httprecognizer"
  spec.version       = Scrawls::Httpengine::Httprecognizer::VERSION
  spec.authors       = ["Kirk Haines"]
  spec.email         = ["wyhaines@gmail.com"]

  spec.summary       = %q{A single Http Engine for Scrawls, utilizing the very simple HttpRecognizer.}
  spec.description   = %q{This is a stupid simple Httpengine for Scrawls.}
  spec.homepage      = "http://github.com/wyhaines/scrawls-httpengine-httprecognizer"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_runtime_dependency "httprecognizer", "~> 1.0"
end
