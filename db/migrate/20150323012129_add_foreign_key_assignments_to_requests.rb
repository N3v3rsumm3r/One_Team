class AddForeignKeyAssignmentsToRequests < ActiveRecord::Migration
  def change
    add_foreign_key :assignments , :requests, on_delete: :cascade
  end
end
