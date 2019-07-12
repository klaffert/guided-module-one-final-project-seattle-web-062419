require 'pry'
require 'rest-client'
require 'JSON'
require_relative 'command_line_interface.rb'
require_relative '../config/environment.rb'

parks_collection = []

def get_state_parks(state)
    state = state.upcase
    all_parks = RestClient.get("https://developer.nps.gov/api/v1/parks?stateCode=#{state}&api_key=rEECihdQAetmTYaSs7lQb0OkMS1e6WDFp7p6lPj5")
    parks_hash = JSON.parse(all_parks)
    parks = parks_hash["data"]
    parks_collection = parks.select {|park| park["states"] == state}
    parks_collection.each do |parks|
        puts parks["fullName"] 
        puts
    end
    puts "Please enter the national park you'd like to visit:"
    park = gets.chomp
    park_details = parks_collection.find do |p|
        p["fullName"] == park
    end
    selected_park(park, park_details)
end

def selected_park(park, park_details)
    puts park_details["description"]
    puts
    puts "Would you like to visit? (Y/N?)"
    puts
    answer = gets.chomp
    puts
    if answer == "Y"
        puts
        puts "Please enter your name:"
        name = gets.chomp
        user = User.find_or_create_by(user_name: name)
        new_park = Park.find_or_create_by(park_name: park, state_code: park_details["states"], weather_info: park_details["weatherInfo"], park_url: park_details["url"]) 
        puts "Nice! You have saved this park for a future visit!"
        puts 
        user = User.find_by(user_name: name)
        # return_name(user) 
        User_Park.create(user_id: user.id, park_id: new_park.id)
    else answer == "N" 
        puts
        puts "No worries! There are many others to choose from."
        puts
        park_choice
    end
end



# Find a current_user
# Create user_park
# Would you like to see your parks?
# Puts out park list
# Would you like to edit park list?
# Is so, edit or delete park list.