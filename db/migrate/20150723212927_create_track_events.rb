class CreateTrackEvents < ActiveRecord::Migration[4.2]
  def change
    create_table :track_events do |t|
      t.string :email
      t.integer :year, limit: 1
      t.string :category
      t.string :title
      t.string :location
      t.date :date
      t.text :info, null: true
      t.string :contact

      t.timestamps null: false
    end
  end
end
