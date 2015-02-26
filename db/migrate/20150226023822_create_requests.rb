class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :title
      t.text :description
      t.date :start_date
      t.date :end_date
      t.boolean :open

      t.timestamps null: false
    end
  end
end
