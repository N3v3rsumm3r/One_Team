class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :request_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end