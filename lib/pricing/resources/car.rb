require 'json'

module Pricing
  module Resources
    class Car < Webmachine::Resource
      def allowed_methods
        ["POST"]
      end

      def process_post
        response.headers["Content-Type"] = "application/json"
        response.body = request.body.to_s
        true
      end
    end
  end
end
