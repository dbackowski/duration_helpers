# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'duration_helpers/version'

Gem::Specification.new do |spec|
  spec.name          = "duration_helpers"
  spec.version       = DurationHelpers::VERSION
  spec.authors       = ["dbackowski"]
  spec.email         = ["damianbackowski@gmail.com"]
  spec.summary       = %q{Duration helpers for Rails.}
  spec.description   = %q{DurationHelpers provides rails helpers for converting duration in H:M:S format to seconds and seconds to duration in H:M:S format.}
  spec.homepage      = "https://github.com/dbackowski/duration_helpers"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.1"
  spec.add_development_dependency "activesupport", "~> 4.1"
end
