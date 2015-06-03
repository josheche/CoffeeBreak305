class AddNameToOrderProfile < ActiveRecord::Migration
  def change
    add_column :order_profiles, :name, :string
  end
end
