class AddForeignKeyCurrentSkillsToSkills < ActiveRecord::Migration
  def change
    add_foreign_key :current_skills , :skills, on_delete: :cascade
  end
end
