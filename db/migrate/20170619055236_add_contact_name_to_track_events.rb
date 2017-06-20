class AddContactNameToTrackEvents < ActiveRecord::Migration
  def change
	  add_column :track_events, :contact_name, :string
  end
end
