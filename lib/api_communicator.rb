require 'pry'
require 'rest-client'
require 'JSON'
require_relative 'command_line_interface.rb'
require_relative '../config/environment.rb'
require_relative '../config/application.yml'

def get_state_parks(state)
    state = state.upcase
    all_parks = RestClient.get("https://developer.nps.gov/api/v1/parks?stateCode=#{state}ENV[stripe_api_key]")
    parks_hash = JSON.parse(all_parks)
    parks = parks_hash["data"]
    parks_collection = parks.select {|park| park["states"] == state}
    
    is_looking_at_parks = true
    while is_looking_at_parks
        print_state_parks(parks_collection)
        puts "Would you like to see more parks in #{state}? (Y/N)".bold
        response = gets.chomp
        if response == "N".upcase
            is_looking_at_parks = false
            puts
            puts "No worries! There are many others to choose from.".bold
            get_state_parks(gets_state_from_user)
        end
    end
end
    
def print_state_parks(parks_collection)
    parks_collection.each do |parks|
        puts parks["fullName"] 
        puts
    end
    puts "Please enter the national park you'd like to visit:".bold
    puts
    park = gets.chomp
    park_details = parks_collection.find do |p|
        p["fullName"] == park
    end
    selected_park(park, park_details, parks_collection)
end

def selected_park(park, park_details, parks_collection)
    puts
    puts "You selected #{park}. Here is some additional information about this park:".bold
    puts
    puts "Park Description: ".bold + "#{park_details["description"]}"
    puts
    puts "Weather Information: ".bold + "#{park_details["weatherInfo"]}"
    puts
    puts "Find out more here: ".bold + "#{park_details["url"]}"
    puts
    puts "Would you like to visit? (Y/N?)".bold
    puts
    answer = gets.chomp
    puts
    if answer == "Y".upcase
        puts
        puts "Please enter your name:".bold
        name = gets.chomp
        puts
        user = User.find_or_create_by(user_name: name)
        new_park = Park.find_or_create_by(park_name: park, state_code: park_details["states"], weather_info: park_details["weatherInfo"], park_url: park_details["url"]) 
        new_user_park = User_Park.find_or_create_by(user_id: user.id, park_id: new_park.id)
        puts "Nice #{name}! You have saved this park for a future visit!".bold
        puts
    end
end

