# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'hieraviz'
  spec.version       = File.read(File.expand_path('../CHANGELOG.md', __FILE__))[/([0-9]+\.[0-9]+\.[0-9]+)/]
  spec.authors       = ['mose']
  spec.email         = ['mose@gandi.net']

  spec.summary       = 'Web and API server for accessing Puppet dev and prod data.'
  spec.description   = 'Simple web application for accessing Puppet development code
                          and production data in a unified interface. Its main goal is
                          to enable a better visibility on the Puppet architecture for
                          more actors to be able to interact with it.'

  spec.homepage      = 'https://github.com/Gandi/hieraviz'
  spec.metadata      = { 'changelog' => 'https://github.com/Gandi/hieraviz/blob/master/CHANGELOG.md' }
  spec.license       = 'MIT'

  spec.files         = Dir.glob('{bin,lib,app}/**/*') +
                       %w(CHANGELOG.md LICENSE.txt README.md config.ru)
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = Dir.glob('spec/**/*')
  spec.require_paths = ['lib']

  spec.add_dependency 'dotenv'
  spec.add_dependency 'oauth2'
  spec.add_dependency 'sinatra'
  spec.add_dependency 'yajl-ruby'
  spec.add_dependency 'sinatra-contrib'
  spec.add_dependency 'rack-flash3'
  spec.add_dependency 'hieracles', '~> 0.4.0'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'shotgun'
  spec.add_development_dependency 'better_errors'
  spec.add_development_dependency 'bundler-audit'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'reek'
  spec.add_development_dependency 'rack-test'
end
