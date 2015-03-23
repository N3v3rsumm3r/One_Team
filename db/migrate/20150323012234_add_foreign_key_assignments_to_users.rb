class AddForeignKeyAssignmentsToUsers < ActiveRecord::Migration
  def change
    add_foreign_key :assignments , :users, on_delete: :cascade
  end
end
