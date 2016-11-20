# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'middleman-strava/version'

Gem::Specification.new do |s|
  s.name        = "middleman-strava"
  s.version     = Middleman::Strava::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Dan Beghin"]
  s.email       = ["dan@begh.in"]
  s.homepage    = "https://github.com/dbeg/middleman-strava"
  s.summary     = %q{Strava API extension for Middleman}
  s.description = %q{A Middleman extension that provides helpers to easily display Strava API data}
  s.license     = "MIT"

  s.required_ruby_version = "~> 2.3.2"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {features,fixtures}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_runtime_dependency("middleman-core", "~> 3.2")
  s.add_runtime_dependency("strava-api-v3", "~> 0.6.0")

  s.add_development_dependency("aruba", "~> 0.10.0")
  s.add_development_dependency("rspec", "~> 3.0")
  s.add_development_dependency("cucumber", "~> 2.0")
end
