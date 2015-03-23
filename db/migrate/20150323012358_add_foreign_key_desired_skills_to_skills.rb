class AddForeignKeyDesiredSkillsToSkills < ActiveRecord::Migration
  def change
    add_foreign_key :desired_skills , :skills, on_delete: :cascade
  end
end
