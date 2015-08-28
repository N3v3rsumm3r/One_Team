class AddSkillLevelToNeededSkills < ActiveRecord::Migration
  def change
    add_column :needed_skills, :proficiency_id, :integer
  end
end
