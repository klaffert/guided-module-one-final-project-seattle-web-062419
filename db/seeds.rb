amy = User.find_or_create_by(user_id: 1, user_name: "Amy")
brian = User.find_or_create_by(user_id: 2, user_name: "Brian")
cody = User.find_or_create_by(user_id: 3, user_name: "Cody")
derek = User.find_or_create_by(user_id: 4, user_name: "Derek")
emily = User.find_or_create_by(user_id: 5, user_name: "Emily")

hood = Park.find_or_create_by(park_id: 1 , park_name: "Hood", state_code: "OR", weather_info: "rainy" , park_hours: "365 days")
olympics = Park.find_or_create_by(park_id: 2 , park_name: "Olympics", state_code: "WA", weather_info: "wet" , park_hours: "365 days")
cascades = Park.find_or_create_by(park_id: 3 , park_name: "Cascades", state_code: "WA", weather_info: "cold" , park_hours: "365 days")
adams = Park.find_or_create_by(park_id: 4 , park_name: "Adams", state_code: "WA", weather_info: "hot" , park_hours: "365 days")
maunakea = Park.find_or_create_by(park_id: 5 , park_name: "Mauna Kea", state_code: "HI", weather_info: "humid" , park_hours: "365 days")

user1 = User_Park.find_or_create_by(user_id: 1, park_id: 5)
user2 = User_Park.find_or_create_by(user_id: 2, park_id: 4)
user3 = User_Park.find_or_create_by(user_id: 3, park_id: 3)
user4 = User_Park.find_or_create_by(user_id: 4, park_id: 2)
user5 = User_Park.find_or_create_by(user_id: 5, park_id: 1)
