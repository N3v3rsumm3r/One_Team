class AddForeignKeyNeededSkillsToRequests < ActiveRecord::Migration
  def change
    add_foreign_key :needed_skills , :requests, on_delete: :cascade
  end
end
