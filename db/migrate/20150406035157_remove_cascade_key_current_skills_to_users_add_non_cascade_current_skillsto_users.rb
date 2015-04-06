class RemoveCascadeKeyCurrentSkillsToUsersAddNonCascadeCurrentSkillstoUsers < ActiveRecord::Migration
  def change
    remove_foreign_key :current_skills , :users
    add_foreign_key :current_skills , :users
  end
end
