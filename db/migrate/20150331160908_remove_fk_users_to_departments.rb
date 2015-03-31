class RemoveFkUsersToDepartments < ActiveRecord::Migration
  def change
    remove_foreign_key :users , :departments
  end
end
