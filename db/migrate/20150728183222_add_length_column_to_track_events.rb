class AddLengthColumnToTrackEvents < ActiveRecord::Migration
  def change
    add_column :track_events, :length, :integer
  end
end
