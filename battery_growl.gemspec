# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'battery_growl/version'

Gem::Specification.new do |spec|
  spec.name          = "battery_growl"
  spec.version       = BatteryGrowl::VERSION
  spec.authors       = ["youyo"]
  spec.email         = ["1003ni2@gmail.com"]
  spec.description   = %q{When the MacBookAir's battery is running low, notify the growl.}
  spec.summary       = %q{When the MacBookAir's battery is running low, notify the growl.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_dependency "ruby-growl"
end
