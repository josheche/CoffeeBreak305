# require 'postmates'
require 'httparty'

class PostmateController < ApplicationController
  def get_delivery
    api_key = "ba3abe7b-8cd6-4f12-863a-219d7fdee119"
    @customer = 'cus_KNpyDAi0jAwBN-'
    @urlstring_to_post = 'https://api.postmates.com/v1/customers/' + @customer + '/delivery_quotes'

    @result = HTTParty.post(@urlstring_to_post.to_str,
      :body => { :dropoff_address => "400 NW 26th St, Miami, FL, 33127",
                 :pickup_address => "2390 NW 2nd Ave, Miami, FL, 33127"
                },
      :basic_auth => { :username => api_key })
  end
end
  # # Create a new Postmates client
  # @client = Postmates.new

  # # Set basic config variables
  # @client.configure do |config|
  #   config.api_key = 'ba3abe7b-8cd6-4f12-863a-219d7fdee119'
  #   config.customer_id = 'cus_KNpyDAi0jAwBN-'
  # end

  # # Or do some more advanced stuff
  # @client.configure do |config|
  #   # Get full Faraday responses instead of Ruby objects representing the body
  #   config.raw_response = true
  #   # Ensure consistent fields & formats by specifying a version in the header
  #   config.headers.merge!('X-Postmates-Version' => 20140825)
  #   # Work with a possible future version of the API
  #   config.api_url = 'https://api.postmates.com/v2/'
  # end

  #   # And switch back to the defaults easily
  #   @client.reset
  # end
