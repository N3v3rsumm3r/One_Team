class ChangeTitleToNameInRequests < ActiveRecord::Migration
  def change
    rename_column :requests, :title, :name
  end
end
