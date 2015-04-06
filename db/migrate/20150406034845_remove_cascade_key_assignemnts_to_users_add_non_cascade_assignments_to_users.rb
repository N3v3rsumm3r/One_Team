class RemoveCascadeKeyAssignemntsToUsersAddNonCascadeAssignmentsToUsers < ActiveRecord::Migration
  def change
    remove_foreign_key :assignments , :users
    add_foreign_key :assignments , :users
  end
end
