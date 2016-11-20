# Middleman Strava

[ ![Codeship Status for dbeg/middleman-strava](https://codeship.com/projects/8ad28840-02a0-0133-4d5f-2eafb47e949a/status?branch=master)](https://codeship.com/projects/88966)
[![Gem Version](https://badge.fury.io/rb/middleman-strava.svg)](https://badge.fury.io/rb/middleman-strava)

`middleman-strava` is an extension for the [Middleman] static site generator that exposes helpers which return [Strava] API results inside your templates.

## Dependencies

* [bundler] 
* [strava-api-v3] \(~> 0.6.0\)
* A valid Strava [access_token]

## Installation

Add `middleman-strava` to your `Gemfile`:

```ruby
gem 'middleman-strava', '~> 1.0.0'
```

Run `bundle install`.

Finally activate the extension within your `config.rb`:

```ruby
activate :strava, :access_token => 'YOUR_PUBLIC_ACCESS_TOKEN'
```

## Usage

Reference `middleman-strava` helpers from within your templates:

### strava_athlete()
```ruby
<img src="<%= strava_athlete['profile'] %>" />
```

### strava_activities(start_date, num_days)
```ruby
<ul>
<% strava_activities('2014-08-01', 7).each do |activity| %>
  <li><%= activity['name'] %></li>
<% end %>
</ul>
```

## Development 

### Running Tests

1. Clone repository: `git clone https://github.com/dbeg/middleman-strava.git && cd middleman-strava`
1. Install gem dependencies: `bundle install`
1. Run test features: `bundle exec rake test`

[middleman]: http://middlemanapp.com
[strava]: http://strava.com
[bundler]: http://bundler.io
[strava-api-v3]: https://github.com/jaredholdcroft/strava-api-v3
[access_token]: http://www.strava.com/developers
