class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :department_id
      t.integer :location_id
      t.integer :position_id
      t.integer :group_id
      t.string :manager
      t.integer :years_with_company
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
