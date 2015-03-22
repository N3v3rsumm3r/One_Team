class CreateNewProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.date :start_date
      t.date :end_date
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
