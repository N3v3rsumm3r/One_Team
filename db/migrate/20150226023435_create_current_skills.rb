class CreateCurrentSkills < ActiveRecord::Migration
  def change
    create_table :current_skills do |t|
      t.integer :user_id
      t.integer :skill_id

      t.timestamps null: false
    end
  end
end
