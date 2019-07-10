class CreateUserParks < ActiveRecord::Migration[4.2]
def change
    create_table :user_parks do |t|
      t.integer :user_id
      t.integer :park_id
    end
  end
end
