class RemoveForeignKeyUsersToPositions < ActiveRecord::Migration
  def change
    remove_foreign_key :users , :positions
  end
end
