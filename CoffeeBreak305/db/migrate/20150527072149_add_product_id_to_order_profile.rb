class AddProductIdToOrderProfile < ActiveRecord::Migration
  def change
    add_column :order_profiles, :product_id, :integer
  end
end
