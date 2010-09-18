require 'lib/logster.rb'

module ActionController
  class LogSubscriber
    alias_method :orig_process_action, :process_action
    
    def process_action(event)
      LogsterLogLine.create(:response_time => event.duration, :path => event.payload[:path])
      orig_process_action(event)
    end
  end
end

