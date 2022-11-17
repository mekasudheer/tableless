lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tableless/version'

Gem::Specification.new do |spec|
  spec.name          = 'tableless'
  spec.version       = Tableless::VERSION
  spec.authors       = ['Jonian Guveli']
  spec.email         = ['jonian@hardpixel.eu']
  spec.summary       = %q{ActiveRecord models without database tables}
  spec.description   = %q{Create models that are not bound to the database and take advantage of the ActiveRecord features, such as validation, relationships, etc.}
  spec.homepage      = 'https://github.com/hardpixel/tableless'
  spec.license       = 'MIT'
  spec.files         = Dir['{lib/**/*,[A-Z]*}']
  spec.require_paths = ['lib']

  spec.add_dependency 'activerecord', '>= 5.0'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
end
