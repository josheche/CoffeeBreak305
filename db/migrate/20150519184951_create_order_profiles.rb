class CreateOrderProfiles < ActiveRecord::Migration
  def change
    create_table :order_profiles do |t|

      t.timestamps null: false
    end
  end
end
