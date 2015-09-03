class AddSkillLevelToCurrentSkills < ActiveRecord::Migration
  def change
    add_column :current_skills, :proficiency_id, :integer
  end
end
