if Rails.env.production?
  ENV['MEILI_URL'] = "http://meili.#{ENV['COPILOT_SERVICE_DISCOVERY_ENDPOINT']}"
end