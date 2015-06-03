class AddRunnerToOrder < ActiveRecord::Migration
  def change
    add_reference :orders, :runner, index: true, foreign_key: true
  end
end
