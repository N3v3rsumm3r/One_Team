class AddForeignKeyResponsesToUsers < ActiveRecord::Migration
  def change
    add_foreign_key :responses , :users, on_delete: :cascade
  end
end
