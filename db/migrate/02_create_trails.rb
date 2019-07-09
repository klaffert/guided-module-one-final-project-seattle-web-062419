class CreateTrails < ActiveRecord::Migration[4.2]
    def change
      create_table :trails do |t|
        t.integer :trail_id
        t.string :trail_name
        t.integer :trail_length
        t.string :trail_intensity
        t.string :trail_duration
        t.string :description
        t.float :latitude
        t.float :longitude
      end
    end
  end