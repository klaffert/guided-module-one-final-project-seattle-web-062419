def greet
        puts
        puts "Welcome to HappyHike, the command line solution for your national park-finding needs!"
end

def gets_user_input
        puts "We can help you find information about national parks."
        puts
        puts "Enter the two-character state code here:"
        gets.chomp
end

# def find_by_name(name)
#     sql = <<-SQL
#     Select * 
#     from Users
#     where name = ?
#     limit 1
#     SQL
#     DB[:conn].execute(sql,name)
# end

def run
        puts greet
        puts gets_user_input
        # find_by_name(name)
end


