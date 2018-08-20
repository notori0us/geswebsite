class ChangeStartTimeToString < ActiveRecord::Migration[4.2]
  def change
    change_column(:track_events, :start_time, :string)
  end
end
