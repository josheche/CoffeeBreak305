class AddOrderProfileToOrder < ActiveRecord::Migration
  def change
    add_reference :orders, :order_profile, index: true, foreign_key: true
  end
end
