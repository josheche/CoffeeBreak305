class AddPhoneToOrderProfile < ActiveRecord::Migration
  def change
    add_column :order_profiles, :phone, :string
  end
end
