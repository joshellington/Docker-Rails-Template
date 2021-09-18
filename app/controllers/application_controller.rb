class ApplicationController < ActionController::Base
  etag { Rails.application.config.importmap.digest(resolver: helpers) if request.format&.html? }
end
