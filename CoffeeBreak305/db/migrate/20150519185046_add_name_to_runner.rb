class AddNameToRunner < ActiveRecord::Migration
  def change
    add_column :runners, :name, :string
  end
end
