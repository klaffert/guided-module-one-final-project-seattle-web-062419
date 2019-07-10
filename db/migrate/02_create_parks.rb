class CreateParks < ActiveRecord::Migration[4.2]
    def change
      create_table :parks do |t|
        t.integer :park_id
        t.string :park_name
        t.string :state_code
        t.string :weather_info
        t.string :park_hours
      end
    end
  end