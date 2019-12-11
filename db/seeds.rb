numbers = (1..100).to_a
months = [
		"Jaunary",
		"Februrary",
		"March",
		"April",
		"May",
		"June",
		"July",
		"August",
		"September",
		"October",
		"November",
		"December"
	]

	User.create(
		user_name: "admin1",
		password: "123",
		email: "admin@admin.com",
		access: "admin",
		first_name: "admin",
		last_name: "admin",
		gender: "Attack Helicopter",
		birth_day: 12,
		birth_month: "Augtober",
		birth_year: 2001,
		house_number: 8888,
		street_name: "Admin Street",
		city_town: "Admin Town",
		state: "New York",
		zip_code: 69420
	)

	10.times {
		User.create(
			user_name: "user#{numbers.sample}",
			password: "pw",
			email: Faker::Internet.free_email,
			first_name: Faker::Name.first_name,
			last_name: Faker::Name.last_name,
			gender: Faker::Gender.binary_type,
			birth_day: rand(1..28),
			birth_month: "#{months.sample}",
			birth_year: rand(1950..2005),
			house_number: rand(1..999),
			street_name: "#{Faker::Address.street_name} #{Faker::Address.street_suffix}",
			city_town: Faker::Address.community,
			state: Faker::Address.state,
			zip_code: rand(10000..99999)
		)
	}