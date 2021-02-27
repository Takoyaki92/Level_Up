class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :study_session, null: false, foreign_key: true

      t.timestamps
    end
  end
end
