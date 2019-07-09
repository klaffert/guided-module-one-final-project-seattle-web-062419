class CreateUsers < ActiveRecord::Migration[4.2]
    def change
      create_table :users do |t|
        t.integer :user_id
        t.string :user_name
        t.string :user_email
      end
    end
  end