# frozen_string_literal: true

require 'rake/testtask'
require 'bundler/gem_tasks'

Bundler::GemHelper.install_tasks

require 'hammer_cli_foreman_leapp/version'
require 'hammer_cli_foreman_leapp/i18n'
require 'hammer_cli/i18n/find_task'
HammerCLI::I18n::FindTask.define(HammerCLIForemanLeapp::I18n::LocaleDomain.new, HammerCLIForemanLeapp.version.to_s)

begin
  require 'rubocop/rake_task'
rescue LoadError
  # RuboCop is optional
else
  RuboCop::RakeTask.new
  task default: [:rubocop]
end
