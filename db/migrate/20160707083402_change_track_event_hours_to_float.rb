class ChangeTrackEventHoursToFloat < ActiveRecord::Migration
  def change
	  reversible do |dir|
		  change_table :track_events do |t|
			  dir.up   { t.change :length, :float }
			  dir.down { t.change :length, :integer }
		  end
	  end
  end
end
