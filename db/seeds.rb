Trail_1 = Trail.create(trail_id: '1', trail_name: "Redwoods", trail_length: 10, trail_intensity: "Easy", trail_duration: "Day Trip", description: "Pretty", latitude: 34.34243, longitude: 75.3429)
Trail_2 = Trail.create(trail_id: '2', trail_name: "Mt. Rainier", trail_length: 2, trail_intensity: "Strenous", trail_duration: "Half-day", description: "Rocky", latitude: 123.435, longitude: 35.35)
Trail_3 = Trail.create(trail_id: '3', trail_name: "Mt. Baker", trail_length: 32, trail_intensity: "Medium", trail_duration: "Overnight", description: "Hard", latitude: 53.35, longitude: 39.53)
Trail_4 = Trail.create(trail_id: '4', trail_name: "The Woods", trail_length: 2, trail_intensity: "Easy", trail_duration: "Half-day", description: "Snowy", latitude: 40.00, longitude: 23.43)
Trail_5 = Trail.create(trail_id: '5', trail_name: "Rattlesnake Ledge", trail_length: 40, trail_intensity: "Medium", trail_duration: "3 Day Trip", description: "Crowded", latitude: 129.3, longitude: 753.42)

User_1 = User.create(user_id: '1', user_name: 'Jon', user_email: "jon@gmail.com")
User_2 = User.create(user_id: '2', user_name: 'Maria', user_email: "maria@yahoo.com")
User_3 = User.create(user_id: '3', user_name: 'Olivia', user_email: "olivia@hotmail.com")
User_4 = User.create(user_id: '4', user_name: 'Tessa', user_email: "tessa@gmail.com")
User_5 = User.create(user_id: '5', user_name: 'Ron', user_email: "ron@yahoo.com")

User_Trail1 = User_Trail.create(user_id: '1', trail_id: '5')
User_Trail2 = User_Trail.create(user_id: '2', trail_id: '4')
User_Trail3 = User_Trail.create(user_id: '3', trail_id: '3')
User_Trail4 = User_Trail.create(user_id: '4', trail_id: '2')
User_Trail5 = User_Trail.create(user_id: '5', trail_id: '1')

