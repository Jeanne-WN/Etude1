require 'json'
require 'rack/test'
require_relative '../fixture'
require_relative '../../lib/app'

describe "Pricing" do
  include Rack::Test::Methods

  let(:app) {
    Webmachine::Application.new do |app|
      app.configure do |config|
        config.adapter = :Rack
      end

      app.routes do
        add ["*"], Pricing::Resources::Car
      end

    end.adapter
  }

  it "return whatever posted" do
      test_data = {:test => "123"}.to_json
      post("/", test_data, {"CONTENT_TYPE" => "application/json"})

      expect(last_response.status).to eql 200
      expect(last_response.headers["Content-Type"]).to eql "application/json"
      expect(last_response.body).to eql test_data
  end
end
