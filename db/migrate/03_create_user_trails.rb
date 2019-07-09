class CreateUserTrails < ActiveRecord::Migration[4.2]
    def change
      create_table :users_trails do |t|
        t.integer :user_id
        t.integer :trail_id
      end
    end
  end