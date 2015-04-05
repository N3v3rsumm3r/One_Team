class AddForeignKeyNeededSkillsToRequestsNoCascade < ActiveRecord::Migration
  def change
    add_foreign_key :needed_skills , :requests
  end
end
