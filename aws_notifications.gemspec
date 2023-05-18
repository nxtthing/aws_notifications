# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name    = "aws_notifications"
  s.summary = "API to receive notifications by AWS SNS"
  s.version = "0.0.1"

  s.authors = ["Aliaksandr Yakubenka"]
  s.email   = "alexandr.yakubenko@startdatelabs.com"
  s.license = "MIT"

  s.files       = Dir["lib/aws_notifications/engine.rb", "app/**/*.rb", "config/**/*.rb", "db/**/*.rb"]

  s.add_dependency "rails"
  s.add_dependency "multi_json"
end
