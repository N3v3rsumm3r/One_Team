class RemoveCascadeKeyResponsesToRequestsAddNonCascadeResponsesToRequests < ActiveRecord::Migration
  def change
    remove_foreign_key :responses , :requests
    add_foreign_key :responses , :requests
  end
end
