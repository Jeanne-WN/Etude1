require 'test/unit'
require 'rack/test'
require_relative '../lib/hello_world'

class HelloWorldTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    HelloWorld.new
  end

  def test_whats_up
    get "/"

    assert last_response.ok?
    assert_equal "What's Up !" , last_response.body
  end
end
