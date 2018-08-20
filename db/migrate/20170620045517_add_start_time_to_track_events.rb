class AddStartTimeToTrackEvents < ActiveRecord::Migration[4.2]
  def change
    add_column :track_events, :start_time, :time
  end
end
