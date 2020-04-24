# frozen_string_literal: true

require 'hammer_cli'
require 'hammer_cli_foreman'

require 'hammer_cli_foreman_leapp/version'
require 'hammer_cli_foreman_leapp/preupgrade_reports'

module HammerCLIForemanLeapp
  HammerCLI::MainCommand.lazy_subcommand(
    'preupgrade_reports',
    'Manage Leapp preupgrade_reports',
    'HammerCLIForemanLeapp::PreupgradeReportsCommand',
    'hammer_cli_foreman_leapp/preupgrade_reports'
  )
end
