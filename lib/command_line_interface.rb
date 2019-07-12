def greet
        puts
        puts "Welcome to National Park Finder, the command line solution for your national park-finding needs!"
        # puts "Please enter your name:"
        # name = gets.chomp
        # user = User.find_or_create_by(user_name: name)
        # puts "Welcome #{name}"
end

def gets_state_from_user
        puts
        puts "We can help you find information about national parks."
        puts
        puts "Please enter the two-character state code of your desired state here:"
        puts
        state = gets.chomp
        return state
        puts
end

def park_choice
        puts
        puts "Please enter the national park you'd like to visit:"
        park = gets.chomp
        puts
end

