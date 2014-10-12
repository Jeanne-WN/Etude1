require 'rubygems'
require 'rack'

class HelloWorld
  def call(env)
    [200, {"Content-Type" => "text/html"}, ["What's Up !"]]
  end
end
