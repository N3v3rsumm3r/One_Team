class AddForeignKeyUsersToPositions < ActiveRecord::Migration
  def change
    add_foreign_key :users , :positions, on_delete: :cascade
  end
end
