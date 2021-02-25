class ChangeEndtimeInStudySessions < ActiveRecord::Migration[6.0]
  def change
    remove_column :study_sessions, :end_time
    add_column :study_sessions, :end_time, :time 
  end
end
