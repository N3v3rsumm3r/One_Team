class RemoveCascadeKeyResponsesToUserAddNonCascadeResponsesToUser < ActiveRecord::Migration
  def change
    remove_foreign_key :responses , :users
    add_foreign_key :responses , :users
  end
end
