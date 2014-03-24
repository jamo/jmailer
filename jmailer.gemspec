# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jmailer/version'

Gem::Specification.new do |spec|
  spec.name          = "jmailer"
  spec.version       = Jmailer::VERSION
  spec.authors       = ["Jarmo Isotalo"]
  spec.email         = ["jamo@isotalo.fi"]
  spec.summary       = %q{A nice frontend for ActionMailer for sending emails from commandline}
  #spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_dependency "actionmailer", "~> 4.0.4"
  spec.add_dependency "redcarpet", "~> 3.1.1"
end
