class AddMeritFieldsToSkills < ActiveRecord::Migration[6.0]
  def change
    add_column :skills, :sash_id, :integer
    add_column :skills, :level,   :integer, :default => 0
  end
end
