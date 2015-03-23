class AddRequestIdToNeededSkills < ActiveRecord::Migration
  def change
    add_column :needed_skills, :request_id, :integer
  end
end
