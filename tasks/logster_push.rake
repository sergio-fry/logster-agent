require 'logster'
namespace :logster do

  desc "Push logs to server"
  task :push_logs => :environment do
    LogsterLogLine.all.each do |el|
      el.push_to_server
      el.destroy
    end
  end

  desc "Push log pack"
  task :push_log_pack => :environment do
    agent = Logster::Agent.new
    agent.push_stats
  end
end

