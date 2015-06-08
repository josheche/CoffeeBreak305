class OrderProfile < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  belongs_to :order
  has_one :business, through: :product
  validates :user, presence: true
end
