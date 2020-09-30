# See https://stackoverflow.com/questions/917566/ruby-share-logger-instance-among-module-classes
# Add to classes to enable logging
module {{cookiecutter.module_name}}
  module Infrastructures
    module Logging
      require "logger"
      require "colorize"

      # This is the magical bit that gets mixed into your classes
      def logger
        Logging.logger
      end

      # Global, memoized, lazy initialized instance of a logger
      def self.logger
        @logger ||= Logger.new($stdout, datetime_format: "%Y-%m-%d %H:%M:%S", formatter: proc { |severity, datetime, progname, msg|
          message = case severity
            when /(WARN|ERROR|FATAL)/
              " #{msg}\n".red
            when /INFO/
              " #{msg}\n".yellow
            else
              " #{msg}\n"
          end
          # strip off utc +0100 from datetime so that '2020-09-17 16:48:40 +0100' becomes 2020-09-17 16:48:40
          "#{datetime}: ".gsub(/\s+[+-]\d{4}/, "") + "%-6.6s" % "#{severity}:" + message.to_s

          raise message.to_s if /FATAL/.match?(severity)
        })
      end
    end
  end
end
