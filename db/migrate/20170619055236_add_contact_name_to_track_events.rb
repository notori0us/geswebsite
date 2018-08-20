class AddContactNameToTrackEvents < ActiveRecord::Migration[4.2]
  def change
    add_column :track_events, :contact_name, :string
  end
end
