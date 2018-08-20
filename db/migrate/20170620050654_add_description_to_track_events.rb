class AddDescriptionToTrackEvents < ActiveRecord::Migration[4.2]
  def change
    add_column :track_events, :description, :text
  end
end
