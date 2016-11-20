require 'middleman-core'
require 'middleman-strava/version'

::Middleman::Extensions.register(:strava) do
  require 'middleman-strava/extension'
  ::Middleman::Strava::StravaExtension
end