# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "middleman-strava"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Dan Beghin"]
  s.email       = ["dan@begh.in"]
  s.homepage    = "https://github.com/dbeg/middleman-strava"
  s.summary     = %q{Strava API extension for Middleman}
  s.description = %q{A Middleman extension that provides helpers to easily display Strava API data}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # The version of middleman-core your extension depends on
  s.add_runtime_dependency("middleman-core", [">= 3.3.10"])

  # Additional dependencies
  s.add_runtime_dependency("strava-api-v3", "0.1.0")
end
