class AddForeignKeyUsersToLocationsNoCascade < ActiveRecord::Migration
  def change
    add_foreign_key :users , :locations
  end
end
