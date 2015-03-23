class AddForeignKeyResponsesToRequests < ActiveRecord::Migration
  def change
    add_foreign_key :responses , :requests, on_delete: :cascade
  end
end
