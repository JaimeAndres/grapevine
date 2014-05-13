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

  # ruby version
  gem.required_ruby_version     = '>= 1.9.3'

  # dependencies
  gem.add_dependency "yard", "~> 0.8.7.4"
  gem.add_dependency "thor", "~> 0.19.1"
  gem.add_dependency "json", "~> 1.8.1"
  gem.add_dependency "grape", "~> 0.7.0"
  gem.add_dependency "i18n", "~> 0.6.9"
  gem.add_dependency "roar", "~> 0.12.7"

  # dev_dependencies
  gem.add_development_dependency "rspec", "~> 2.13.0"

  if RUBY_VERSION == "1.9.3"
    gem.add_development_dependency "debugger", "~> 1.6.6"
  elsif RUBY_VERSION >= "2.0.0"
    gem.add_development_dependency "byebug", "~> 3.1.2"
  end
end
