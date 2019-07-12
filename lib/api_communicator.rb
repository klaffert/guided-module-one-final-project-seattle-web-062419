require 'pry'
require 'rest-client'
require 'JSON'
require_relative 'command_line_interface.rb'
require_relative '../config/environment.rb'

def get_state_parks(state)
    state = state.upcase
    all_parks = RestClient.get("https://developer.nps.gov/api/v1/parks?stateCode=#{state}&api_key=rEECihdQAetmTYaSs7lQb0OkMS1e6WDFp7p6lPj5")
    parks_hash = JSON.parse(all_parks)
    parks = parks_hash["data"]
    parks_collection = parks.select {|park| park["states"] == state}
    
    is_looking_at_parks = true
    while is_looking_at_parks
        print_state_parks(parks_collection)
        puts "Would you like to see more parks? (Y/N)"
        response = gets.chomp
        if response == "N"
            is_looking_at_parks = false
            puts "No worries! There are many others to choose from."
        end
    end
end
    
def print_state_parks(parks_collection)
    parks_collection.each do |parks|
        puts parks["fullName"] 
        puts
    end
    puts "Please enter the national park you'd like to visit:"
    park = gets.chomp
    park_details = parks_collection.find do |p|
        p["fullName"] == park
    end
    selected_park(park, park_details, parks_collection)
end

def selected_park(park, park_details, parks_collection)
    puts park_details["description"]
    puts
    puts "Would you like to visit? (Y/N?)"
    puts
    answer = gets.chomp
    puts
    if answer == "Y"  #if 
        puts
        puts "Please enter your name:"
        name = gets.chomp
        user = User.find_or_create_by(user_name: name)
        new_park = Park.find_or_create_by(park_name: park, state_code: park_details["states"], weather_info: park_details["weatherInfo"], park_url: park_details["url"]) 
        puts "Nice! You have saved this park for a future visit!"
     end
end



# Find a current_user
# Create user_park
# Would you like to see your parks?
# Puts out park list
# Would you like to edit park list?
# Is so, edit or delete park list.