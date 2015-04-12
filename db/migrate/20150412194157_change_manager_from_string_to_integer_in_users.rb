class ChangeManagerFromStringToIntegerInUsers < ActiveRecord::Migration
  def change
    rename_column :users , :manager, :manager_id
    change_column :users, :manager_id, :integer
  end
end
