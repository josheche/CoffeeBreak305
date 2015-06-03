class AddUserToOrderProfile < ActiveRecord::Migration
  def change
    add_reference :order_profiles, :user, index: true, foreign_key: true
  end
end
