class ChangeStartTimeToString < ActiveRecord::Migration
  def change
	  change_column(:track_events, :start_time, :string)
  end
end
