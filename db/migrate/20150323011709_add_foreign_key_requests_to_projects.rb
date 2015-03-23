class AddForeignKeyRequestsToProjects < ActiveRecord::Migration
  def change
    add_foreign_key :requests , :projects, on_delete: :cascade
  end
end
