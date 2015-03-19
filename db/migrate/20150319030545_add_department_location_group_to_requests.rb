class AddDepartmentLocationGroupToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :department_id, :integer
    add_column :requests, :group_id, :integer
    add_column :requests, :location_id, :integer
  end
end
