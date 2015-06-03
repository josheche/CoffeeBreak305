class AddOrderProfileToUser < ActiveRecord::Migration
  def change
    add_reference :users, :order_profile, index: true, foreign_key: true
  end
end
