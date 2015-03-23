class AddForeignKeyRequestsToUsers < ActiveRecord::Migration
  def change
    add_foreign_key :requests , :users, on_delete: :cascade
  end
end
