class CreateStudySessions < ActiveRecord::Migration[6.0]
  def change
    create_table :study_sessions do |t|
      t.string :goal
      t.datetime :start_time
      t.datetime :end_time
      t.text :description
      t.boolean :public, default: false
      t.references :skill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
