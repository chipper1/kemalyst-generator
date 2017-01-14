require "cli"
require "sentry/sentry_command"

module Kemalyst::Generator

  class MainCommand < Cli::Supercommand
    command "w", aliased: "watch"

    class Watch < Sentry::SentryCommand
      command_name "watch"

      def run
        options.watch << "./config/**/*.cr"
        super
      end

    end

  end

end