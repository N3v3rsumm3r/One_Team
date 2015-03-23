class AddForeignKeyDesiredSkillsToUsers < ActiveRecord::Migration
  def change
    add_foreign_key :desired_skills , :users, on_delete: :cascade
  end
end
