class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :description
      t.references :study_session, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.datetime :date_time

      t.timestamps
    end
  end
end
