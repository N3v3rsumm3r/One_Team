class CreateNeededSkills < ActiveRecord::Migration
  def change
    create_table :needed_skills do |t|
      t.integer :skill_id

      t.timestamps null: false
    end
  end
end
