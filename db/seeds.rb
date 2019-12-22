# User.destroy_all
# Question.destroy_all
# Traffic.destroy_all
# Page.destroy_all

Answer.create(user_id: 1, question_id: 1, user_answer: "Labrador Retriever", user_result: "correct")
Answer.create(user_id: 1, question_id: 2, user_answer: "Carrie", user_result: "incorrect")
Answer.create(user_id: 1, question_id: 3, user_answer: "Isaac Newton", user_result: "incorrect")

Answer.create(user_id: 2, question_id: 1, user_answer: "Labrador Retriever", user_result: "correct")
Answer.create(user_id: 2, question_id: 2, user_answer: "Carrie", user_result: "incorrect")
Answer.create(user_id: 2, question_id: 3, user_answer: "Isaac Newton", user_result: "incorrect")

Answer.create(user_id: 2, question_id: 1, user_answer: "Labrador Retriever", user_result: "correct")
Answer.create(user_id: 2, question_id: 2, user_answer: "Carrie", user_result: "incorrect")
Answer.create(user_id: 2, question_id: 3, user_answer: "Isaac Newton", user_result: "incorrect")


# file = File.read('api.json')
# data_hash = JSON.parse(file)

# numbers = (1..100).to_a
# months = [
# 		"Jaunary",
# 		"Februrary",
# 		"March",
# 		"April",
# 		"May",
# 		"June",
# 		"July",
# 		"August",
# 		"September",
# 		"October",
# 		"November",
# 		"December"
# 	]

# 	data_hash["results"].each do |question|
# 		Question.create(
# 			category: question["category"],
# 			difficulty: question["difficulty"],
# 			question_desc: question["question"],
# 			correct_answer: question["correct_answer"],
# 			incorrect_answers: question["incorrect_answers"]
# 		)
# 	end

# 	User.create(
# 		user_name: "admin1",
# 		password: "123",
# 		email: "admin@admin.com",
# 		access: "admin",
# 		first_name: "admin",
# 		last_name: "admin",
# 		gender: "Attack Helicopter",
# 		birth_day: 21,
# 		birth_month: "Augtober",
# 		birth_year: 2001,
# 		house_number: 8888,
# 		street_name: "Admin Street",
# 		city_town: "Admin Town",
# 		state: "New York",
# 		zip_code: 69420
# 	)

# 	20.times {
# 		User.create(
# 			user_name: "user#{numbers.sample}",
# 			password: "pw",
# 			email: Faker::Internet.free_email,
# 			first_name: Faker::Name.first_name,
# 			last_name: Faker::Name.last_name,
# 			gender: Faker::Gender.binary_type,
# 			birth_day: rand(1..28),
# 			birth_month: "#{months.sample}",
# 			birth_year: rand(1950..2005),
# 			house_number: rand(1..999),
# 			street_name: "#{Faker::Address.street_name} #{Faker::Address.street_suffix}",
# 			city_town: Faker::Address.community,
# 			state: Faker::Address.state,
# 			zip_code: rand(10000..99999)
# 		)
# 	}

# 	Traffic.create(user_id: 1, interaction: "click", element: "test_button3")

# 	Page.create(user_id: 1, page_name: "index")
