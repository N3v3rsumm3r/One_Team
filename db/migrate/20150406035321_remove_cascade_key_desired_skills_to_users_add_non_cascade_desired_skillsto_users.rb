class RemoveCascadeKeyDesiredSkillsToUsersAddNonCascadeDesiredSkillstoUsers < ActiveRecord::Migration
  def change
    remove_foreign_key :desired_skills , :users
    add_foreign_key :desired_skills , :users
  end
end
