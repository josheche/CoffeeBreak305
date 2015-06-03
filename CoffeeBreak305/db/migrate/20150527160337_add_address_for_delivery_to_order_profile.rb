class AddAddressForDeliveryToOrderProfile < ActiveRecord::Migration
  def change
    add_column :order_profiles, :address_for_delivery, :string
  end
end
