# Middleman Strava

`middleman-strava` is an extension for the [Middleman] static site generator that exposes helpers which return [Strava] API results inside your templates.

## Dependencies

* [strava-api-v3]
* A valid Strava [access_token]

## Installation

Add `middleman-strava` to your `Gemfile`:

```ruby
gem 'middleman-strava'
```

Then run `bundle install`.

Finally activate the extension within your `config.rb`:

```ruby
activate :middleman_strava, :access_token => 'YOUR_PUBLIC_ACCESS_TOKEN'
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

[middleman]: http://middlemanapp.com
[strava]: http://strava.com
[strava-api-v3]: https://github.com/jaredholdcroft/strava-api-v3
[access_token]: http://www.strava.com/developers
