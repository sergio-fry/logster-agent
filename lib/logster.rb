module Logster
  class Agent
    SERVER = 'http://localhost:3000'
    SITE_ID = '1'

    def push_stats
      logs = true

      while(!logs.blank?)
        logs = LogsterLogLine.where("created_at < ?", Time.now.since(-1.minutes)).limit(1000)
        break if logs.blank?

        pack = []
        logs.each do |log|
          pack << {:access_time => log.created_at, :response_time => log.response_time, :path => log.path, :site_id => LogsterLogLine::SITE_ID}
          log.destroy
        end

        pack = ActiveSupport::Gzip.compress(pack.to_json)

        res = Net::HTTP.post_form(URI.parse("#{LogsterLogLine::SERVER}/log_lines/push_gzipped"), { "logs" => pack })

      end
    end

  end
end
