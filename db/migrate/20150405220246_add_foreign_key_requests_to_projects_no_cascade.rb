class AddForeignKeyRequestsToProjectsNoCascade < ActiveRecord::Migration
  def change
    add_foreign_key :requests , :projects
  end
end
