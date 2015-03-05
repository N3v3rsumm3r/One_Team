class ChangeProjectsToAssignments < ActiveRecord::Migration
  def change
    rename_table :projects, :assignments
  end
end
