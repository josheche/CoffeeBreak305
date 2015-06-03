json.array!(@order_profiles) do |order_profile|
  json.extract! order_profile, :id
  json.url order_profile_url(order_profile, format: :json)
end
