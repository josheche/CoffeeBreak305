class Order < ActiveRecord::Base
  has_one :order_profile
  has_one :runner
  has_one :user, through: :order_profile
end
