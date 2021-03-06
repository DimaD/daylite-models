lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'daylite_models'

Gem::Specification.new do |spec|
  spec.name          = 'daylite_models'
  spec.version       = DayliteModels::VERSION
  spec.authors       = ['Dmitry Dzema', 'Jason Holloway']
  spec.email         = ['dimad.ag@gmail.com', 'jason_holloway@mac.com']

  spec.summary = 'Set of ActiveRecord classes to work with the Daylite 4, 5 and 6 self-serve databases'

  spec.description = 'This is a set of ActiveRecord classes, designed to work with self-serve instances of Daylite 4, 5 and 6 by [Marketcircle](http://www.marketcircle.com).
All the classes are in namespace Daylite. For example, Daylite projects live in the class Daylite::Project.
Models attributes are mapped to usual ruby underscore_notation from Daylite cameCase notation.'

  spec.homepage      = 'https://github.com/DimaD/daylite-models'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop', '~> 0.51.0'

  spec.add_development_dependency 'yard'

  spec.add_dependency 'activerecord'
  spec.add_dependency 'activesupport'
  spec.add_dependency 'pg'

  spec.has_rdoc = 'yard'
end
