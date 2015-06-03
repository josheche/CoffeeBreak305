class AddPhoneToRunner < ActiveRecord::Migration
  def change
    add_column :runners, :phone, :string
  end
end
