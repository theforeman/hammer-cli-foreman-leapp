# frozen_string_literal: true

require 'hammer_cli'
require 'hammer_cli_foreman'

require 'hammer_cli_foreman_leapp/version'
require 'hammer_cli_foreman_admin/i18n'
require 'hammer_cli_foreman_leapp/preupgrade_reports'

module HammerCLIForemanLeapp
  HammerCLI::MainCommand.lazy_subcommand(
    'preupgrade-report',
    'Manage Leapp Preupgrade reports',
    'HammerCLIForemanLeapp::PreupgradeReportsCommand',
    'hammer_cli_foreman_leapp/preupgrade_reports'
  )
end
