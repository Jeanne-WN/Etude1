require 'webmachine'
require 'webmachine/adapters/rack'
require_relative 'pricing/resources/car'

App = Webmachine::Application.new do |app|

  app.configure do |config|
    config.adapter = :Rack
  end

  app.routes do
    add ["*"], Pricing::Resources::Car
  end

end
