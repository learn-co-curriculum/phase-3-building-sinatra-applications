require_relative './config/environment.rb'
# # require './app/controllers/application_controller.rb'

class App < ApplicationController
    use Rack::Cors do
        allow do
          origins '*'
          resource '*', headers: :any, methods: [:get, :post, :delete, :put, :patch, :options, :head]
        end
      end
      
      # Parse JSON from the request body into the params hash
      use Rack::JSONBodyParser
end

run App