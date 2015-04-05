class RemoveForeignKeyRequestsToUsers < ActiveRecord::Migration
  def change
    remove_foreign_key :requests, :users
  end
end
