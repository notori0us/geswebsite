class AddLengthColumnToTrackEvents < ActiveRecord::Migration[4.2]
  def change
    add_column :track_events, :length, :integer
  end
end
