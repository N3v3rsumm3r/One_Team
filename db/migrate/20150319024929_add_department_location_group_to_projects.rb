class AddDepartmentLocationGroupToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :department_id, :integer
    add_column :projects, :group_id, :integer
    add_column :projects, :location_id, :integer
  end
end
