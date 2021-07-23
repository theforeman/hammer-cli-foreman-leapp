# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'date'
require 'hammer_cli_foreman_leapp/version'

Gem::Specification.new do |spec|
  spec.name          = 'hammer_cli_foreman_leapp'
  spec.version       = HammerCLIForemanLeapp.version.dup
  spec.license       = 'GPL-3.0'
  spec.date          = Date.today.to_s
  spec.authors       = ['Foreman Leapp team']
  spec.email         = ['foreman-dev@googlegroups.com']
  spec.homepage      = 'https://github.com/stejskalleos/hammer-cli-foreman-leapp'

  spec.platform      = Gem::Platform::RUBY
  spec.summary       = 'Foreman Leapp plugin for Hammer CLI'

  spec.files         = Dir['{lib,config}/**/*', 'LICENSE', 'README*']
  spec.require_paths = ['lib']
  spec.test_files    = Dir['{test}/**/*']

  spec.add_dependency 'hammer_cli_foreman', '>= 2.0.0', '< 4.0.0'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop', '~> 0.80'
end
