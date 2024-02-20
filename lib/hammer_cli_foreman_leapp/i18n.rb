# frozen_string_literal: true

require 'hammer_cli/i18n'

module HammerCLIForemanLeapp
  module I18n
    class LocaleDomain < HammerCLI::I18n::LocaleDomain
      def translated_files
        Dir.glob(File.join(File.dirname(__FILE__), '../**/*.rb'))
      end

      def locale_dir
        File.join(File.dirname(__FILE__), '../../locale')
      end

      def domain_name
        'hammer-cli-foreman-leapp'
      end
    end

    class SystemLocaleDomain < LocaleDomain
      def locale_dir
        '/usr/share/locale'
      end
    end
  end
end

domain = [HammerCLIForemanLeapp::I18n::LocaleDomain.new,
          HammerCLIForemanLeapp::I18n::SystemLocaleDomain.new].find(&:available?)
HammerCLI::I18n.add_domain(domain) if domain
