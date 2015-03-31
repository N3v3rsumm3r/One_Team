class RemoveForeignKeyUsersToGroups < ActiveRecord::Migration
  def change
    remove_foreign_key :users , :groups
  end
end
