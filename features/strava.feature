Feature: Strava API integration
	As a middleman site maintainer
  	I want to leverage Strava API calls
  	So that Strava data is displayed

  	Scenario: Strava config var `access_token` is not set
    	Given the Server is running at "strava-app"
    	When I go to "/" it raises an "Authorization Error"
