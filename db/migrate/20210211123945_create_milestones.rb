class CreateMilestones < ActiveRecord::Migration[6.0]
  def change
    create_table :milestones do |t|
      t.string :goal
      t.datetime :complete_date
      t.references :skill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
