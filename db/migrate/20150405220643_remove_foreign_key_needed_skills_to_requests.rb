class RemoveForeignKeyNeededSkillsToRequests < ActiveRecord::Migration
  def change
    remove_foreign_key :needed_skills , :requests
  end
end
