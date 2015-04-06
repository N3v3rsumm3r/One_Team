class RemoveCascadeKeyDesiredSkillsToSkillsAddNonCascadeDesiredSkillstoSkills < ActiveRecord::Migration
  def change
    remove_foreign_key :desired_skills , :skills
    add_foreign_key :desired_skills , :skills
  end
end
