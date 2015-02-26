Feature: Strava Integration

  Scenario: Strava config var `access_token` is not set
    Given a fixture app "strava-app"
    And a file named "config.rb" with:
      """
      activate :middleman_strava do |d|
        d.access_token = nil
      end
      """
    And the Server is running
    When I go to "/"
    Then I should see "0" lines
