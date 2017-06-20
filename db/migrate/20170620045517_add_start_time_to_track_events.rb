class AddStartTimeToTrackEvents < ActiveRecord::Migration
  def change
    add_column :track_events, :start_time, :time
  end
end
