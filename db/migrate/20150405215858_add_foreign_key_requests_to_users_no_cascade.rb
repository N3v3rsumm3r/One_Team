class AddForeignKeyRequestsToUsersNoCascade < ActiveRecord::Migration
  def change
    add_foreign_key :requests , :users
  end
end
