class AddForeignKeyCurrentSkillsToUsers < ActiveRecord::Migration
  def change
    add_foreign_key :current_skills , :users, on_delete: :cascade
  end
end
