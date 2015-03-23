class AddForeignKeyUsersToGroups < ActiveRecord::Migration
  def change
    add_foreign_key :users , :groups, on_delete: :cascade
  end
end
