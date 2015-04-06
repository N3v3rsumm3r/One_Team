class RemoveCascadeKeyCurrentSkillsToSkillsAddNonCascadeCurrentSkillstoSkills < ActiveRecord::Migration
  def change
    remove_foreign_key :current_skills , :skills
    add_foreign_key :current_skills , :skills
  end
end
