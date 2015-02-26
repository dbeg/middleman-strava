require 'middleman-core'
require 'middleman-strava/version'

::Middleman::Extensions.register(:middleman_strava) do
  require 'middleman-strava/extension'
  ::Middleman::StravaExtension
end
