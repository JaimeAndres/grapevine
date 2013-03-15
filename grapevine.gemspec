# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'grapevine/version'

Gem::Specification.new do |gem|
  gem.name          = "grapevine"
  gem.version       = Grapevine::VERSION
  gem.authors       = ["Jaime Andres"]
  gem.email         = ["andresdavila6@gmail.com"]
  gem.description   = %q{creates a work environment including grape, roar, rspec, sequel to develop REST architectures}
  gem.summary       = %q{REST architecture with DCI in mind thanks to grape}
  gem.homepage      = "http://jaimeandres.github.com/grapevine/"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  # dependencies
  gem.add_dependency "yard"
  gem.add_dependency "thor"
  gem.add_dependency "json"
  gem.add_dependency "grape"
  gem.add_dependency "i18n"
  gem.add_dependency "roar"

  # dev_dependencies
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "debugger"
end
