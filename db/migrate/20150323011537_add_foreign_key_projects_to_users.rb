class AddForeignKeyProjectsToUsers < ActiveRecord::Migration
  def change
    add_foreign_key :projects , :users, on_delete: :cascade
  end
end
