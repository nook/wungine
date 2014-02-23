$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "wungine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "wungine"
  s.version     = Wungine::VERSION
  s.authors     = ["Matt Holloway"]
  s.email       = ["mholloway@book.com"]
  s.homepage    = "http://nook-rbms.herokuapp.com"
  s.summary     = "Wungine: A little rails weather engine that could"
  s.description = %Q{
    Wungine: The rails engine that could.  This engine 
    connects to Weather Underground (wunderground.com) and will 
    take a city, and return the weather for it.
  }

  s.files = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files = s.files.grep(%r{^(test|s|features)/})

  s.add_dependency "rails", "~> 4.0.3"
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'pry-debugger'
  s.add_development_dependency 'vcr'
  s.add_development_dependency 'webmock'

  s.add_dependency 'faraday'
  s.add_dependency 'faraday_middleware'
  s.add_dependency 'hashie' 

  
end
