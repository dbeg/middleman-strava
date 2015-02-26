require 'middleman-core'

module Middleman
  class StravaExtension < ::Middleman::Extension
    option :access_token, '', 'The access token required to use the Strava API'

    cattr_accessor :client

    def initialize(app, options_hash={}, &block)
      super

      if (options_hash[:access_token].present?)
        options[:access_token] = options_hash[:access_token]
      end
    end

    def after_configuration
      StravaExtension.client = ::Strava::Api::V3::Client.new(:access_token => options[:access_token])
    end

    helpers do
      def strava_athlete(athlete_id=nil)
        if (athlete_id.present?)
          StravaExtension.client.retrieve_another_athlete(athlete_id)
        else
          StravaExtension.client.retrieve_current_athlete
        end
      end

      def strava_activities(start, num_days=7)
        start_date = Date.parse(start)
        end_date = start_date + num_days

        StravaExtension.client.list_athlete_activities({:after => start_date.to_time.to_i, :before => end_date.to_time.to_i}).sort_by { |hash| hash['start_date'] }
      end
    end
  end
end
