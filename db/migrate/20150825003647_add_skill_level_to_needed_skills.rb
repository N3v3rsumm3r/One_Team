class AddSkillLevelToNeededSkills < ActiveRecord::Migration
  def change
    add_column :needed_skills, :skill_level, :integer
  end
end
