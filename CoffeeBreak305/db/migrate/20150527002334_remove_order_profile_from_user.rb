class RemoveOrderProfileFromUser < ActiveRecord::Migration
  def change
    remove_reference :users, :order_profile, index: true, foreign_key: true
  end
end
