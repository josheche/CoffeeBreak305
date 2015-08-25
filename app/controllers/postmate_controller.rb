require 'postmates'

class PostmateController < ApplicationController
  def get_delivery
  # Create a new Postmates client
  @client = Postmates.new

  # Set basic config variables
  @client.configure do |config|
    config.api_key = 'YOUR_API_KEY'
    config.customer_id = 'YOUR_CUSTOMER_ID'
  end

  # Or do some more advanced stuff
  @client.configure do |config|
    # Get full Faraday responses instead of Ruby objects representing the body
    config.raw_response = true
    # Ensure consistent fields & formats by specifying a version in the header
    config.headers.merge!('X-Postmates-Version' => 20140825)
    # Work with a possible future version of the API
    config.api_url = 'https://api.postmates.com/v2/'
  end

  # And switch back to the defaults easily
  @client.reset
end
