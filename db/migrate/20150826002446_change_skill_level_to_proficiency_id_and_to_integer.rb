class ChangeSkillLevelToProficiencyIdAndToInteger < ActiveRecord::Migration
  def change
    change_column :needed_skills, :skill_level, :integer
    rename_column :needed_skills, :skill_level, :proficiency_id
  end
end
