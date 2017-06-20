class AddDescriptionToTrackEvents < ActiveRecord::Migration
  def change
    add_column :track_events, :description, :text
  end
end
