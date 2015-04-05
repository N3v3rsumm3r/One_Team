class RemoveForeignKeyRequestsToProjects < ActiveRecord::Migration
  def change
    remove_foreign_key :requests, :projects
  end
end
