def greet
        puts
        puts "Welcome to National Park Finder, the command line solution for your national park-finding needs!".bold
        # puts "Please enter your name:"
        # name = gets.chomp
        # user = User.find_or_create_by(user_name: name)
        # puts "Welcome #{name}"
end

def gets_state_from_user
        puts
        puts "We can help you find information about national parks.".bold
        puts
        puts "Please enter the two-character state code of your desired state here:".bold
        puts
        state = gets.chomp
        puts
        puts "Here is a list of national parks within the state of #{state}:".bold
        puts
        return state
        puts
end

def park_choice
        puts
        puts "Please enter the national park you'd like to visit:".bold
        park = gets.chomp
        puts
end

