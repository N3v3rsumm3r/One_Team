class AddFkUsersToDepartmentsNoCascade < ActiveRecord::Migration
  def change
    add_foreign_key :users , :departments
  end
end
