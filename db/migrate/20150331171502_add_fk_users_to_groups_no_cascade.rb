class AddFkUsersToGroupsNoCascade < ActiveRecord::Migration
  def change
    add_foreign_key :users , :groups
  end
end
