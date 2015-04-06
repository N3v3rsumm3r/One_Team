class RemoveCascadeKeyAssignemntsToRequestsAddNonCascadeAssignmentsToRequests < ActiveRecord::Migration
  def change
    remove_foreign_key :assignments , :requests
    add_foreign_key :assignments , :requests
  end
end
