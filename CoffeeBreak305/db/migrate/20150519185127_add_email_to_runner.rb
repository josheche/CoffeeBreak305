class AddEmailToRunner < ActiveRecord::Migration
  def change
    add_column :runners, :email, :string
  end
end
