class RemovePointsFromSkills < ActiveRecord::Migration[6.0]
  def change
    remove_column :skills, :points
  end
end
