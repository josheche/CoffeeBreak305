class Business < ActiveRecord::Base
  has_many :order_profiles
  has_many :products
end
