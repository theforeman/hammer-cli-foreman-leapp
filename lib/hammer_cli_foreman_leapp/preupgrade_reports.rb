# frozen_string_literal: true

module HammerCLIForemanLeapp
  class PreupgradeReportsCommand < HammerCLIForeman::Command
    resource :preupgrade_reports

    class ListCommand < HammerCLIForeman::ListCommand
      output do
        field :id, _('Id')
        field :reported_at, _('Reported at'), Fields::Date
        field :job_invocation_id, _('Job Invocation')
        field :host_id, _('Host')

        collection :preupgrade_report_entries, _('Entries'), hide_blank: true do
          field :id, _('Id')
          field :hostname, _('Host name')
          field :title, _('Title')
          field :actor, _('Actor')
          field :audience, _('Audience')
          field :severity, _('Severity')
          field :tags, _('Tags'), Fields::List
          field :summary, _('Summary'), Fields::LongText
        end
      end

      build_options
    end

    class InfoCommand < HammerCLIForeman::InfoCommand
      output PreupgradeReportsCommand::ListCommand.output_definition
      build_options
    end

    autoload_subcommands
  end
end
