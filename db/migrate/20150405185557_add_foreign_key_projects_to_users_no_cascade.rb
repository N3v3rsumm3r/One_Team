class AddForeignKeyProjectsToUsersNoCascade < ActiveRecord::Migration
  def change
    add_foreign_key :projects , :users
  end
end
