class RemoveDepartmentLocationGroupFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :department_id, :integer
    remove_column :projects, :group_id, :integer
    remove_column :projects, :location_id, :integer
  end
end
