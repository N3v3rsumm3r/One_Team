class AddForeignKeyUsersToDepartments < ActiveRecord::Migration
  def change
    add_foreign_key :users , :departments, on_delete: :cascade
  end
end
