require 'httparty'
require 'json'

class PostmateController < ApplicationController
  def get_delivery
    api_key = INSERT API KEY HERE
    @customer = CUSTOMER ID STRING HERE
    @urlstring_to_post = 'https://api.postmates.com/v1/customers/' + @customer + ROUTE FOR ORDER HERE

    @result = HTTParty.post(@urlstring_to_post.to_str,
      :body => { :dropoff_address => "400 NW 26th Street, Miami, FL, 33127",
                 :pickup_address => ADDRESS FOR PANTHER COFFEE HERE
                }
      :basic_auth => { :username => api_key })
  end
end
