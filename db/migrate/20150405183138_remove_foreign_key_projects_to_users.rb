class RemoveForeignKeyProjectsToUsers < ActiveRecord::Migration
  def change
    remove_foreign_key :projects , :users
  end
end
