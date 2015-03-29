class RemoveForeignKeyUsersToLocations < ActiveRecord::Migration
  def change
    remove_foreign_key :users , :locations
  end
end
