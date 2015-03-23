class AddForeignKeyUsersToLocations < ActiveRecord::Migration
  def change
    add_foreign_key :users , :locations, on_delete: :cascade
  end
end
