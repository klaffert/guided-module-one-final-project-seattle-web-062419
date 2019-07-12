class CreateParks < ActiveRecord::Migration[4.2]
    def change
      create_table :parks do |t|
        t.string :park_name
        t.string :state_code
        t.string :weather_info
        t.string :park_url
      end
    end
  end