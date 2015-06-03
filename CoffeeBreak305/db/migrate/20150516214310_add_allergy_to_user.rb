class AddAllergyToUser < ActiveRecord::Migration
  def change
    add_column :users, :allergy, :string
  end
end
