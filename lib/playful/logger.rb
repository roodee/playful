require "logger"

module Playful
  module Loggable
    def logger
      Loggable.logger
    end

    def self.logger
      @logger ||= Logger.new(STDOUT)
    end
    
    # Add log method for backwards compatibility
    def log(msg)
      Loggable.logger
      logger.info(msg)
    end
  end
end
