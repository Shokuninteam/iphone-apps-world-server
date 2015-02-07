# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' },
#                       { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


##



categories = Category.create([{name: "divertissement"}, 
	{name: "jeux"},{name: "sport"},{name: "info"},
	{name: "musique"}, {name: "tele"}, {name: "chat"},
	{name: "prod"}
	])

apps = App.create([
	{
		name: 'twitter',
 		price: 10,
 		description: "blablabla description tiwtter1",
 		analysis: "blablabla analysis twitter1",
 		#pro: Pro.where(id: [1,2]),
 		#con: Con.where(id: [1,2]),
 		url: "https://itunes.apple.com/us/app/twitter/id333903271?mt=8",
 		category: categories.first,
 		released: true
 	},
 	{
 		name: 'youtube2',
		price: 0,
 		description: "blablabla description youtube",
 		analysis: "blablabla analysis youtube",
 	#	pros: Pro.where(id: [4,5]),
 	#	cons: Con.where(id: [4,5]),
 		released: true,
 		url: "https://itunes.apple.com/us/app/youtube/id544007664?mt=8",
 		category: categories.first
 	},
 	{
 		name: 'youtub3',
		price: 0,
 		description: "blablabla description youtube",
 		analysis: "blablabla analysis youtube",
 	#	pros: Pro.where(id: [4,5]),
 	#	cons: Con.where(id: [4,5]),
 		released: true,
 		url: "https://itunes.apple.com/us/app/youtube/id544007664?mt=8",
 		category: categories.first
 	},
 	{
 		name: 'youtube4',
		price: 0,
 		description: "blablabla description youtube",
 		analysis: "blablabla analysis youtube",
 	#	pros: Pro.where(id: [4,5]),
 	#	cons: Con.where(id: [4,5]),
 		released: true,
 		url: "https://itunes.apple.com/us/app/youtube/id544007664?mt=8",
 		category: categories.first
 	},
 	{
 		name: 'youtube5',
		price: 0,
 		description: "blablabla description youtube",
 		analysis: "blablabla analysis youtube",
 	#	pros: Pro.where(id: [4,5]),
 	#	cons: Con.where(id: [4,5]),
 		released: true,
 		url: "https://itunes.apple.com/us/app/youtube/id544007664?mt=8",
 		category: categories.first
 	},
 	{
 		name: 'youtube6',
		price: 0,
 		description: "blablabla description youtube",
 		analysis: "blablabla analysis youtube",
 	#	pros: Pro.where(id: [4,5]),
 	#	cons: Con.where(id: [4,5]),
 		released: true,
 		url: "https://itunes.apple.com/us/app/youtube/id544007664?mt=8",
 		category: categories.first
 	},
 	{
 		name: 'youtube7',
		price: 0,
 		description: "blablabla description youtube",
 		analysis: "blablabla analysis youtube",
 	#	pros: Pro.where(id: [4,5]),
 	#	cons: Con.where(id: [4,5]),
 		released: true,
 		url: "https://itunes.apple.com/us/app/youtube/id544007664?mt=8",
 		category: categories.first
 	},
 	{
 		name: 'youtube8',
		price: 0,
 		description: "blablabla description youtube",
 		analysis: "blablabla analysis youtube",
 	#	pros: Pro.where(id: [4,5]),
 	#	cons: Con.where(id: [4,5]),
 		released: true,
 		url: "https://itunes.apple.com/us/app/youtube/id544007664?mt=8",
 		category: categories.first
 	},
 	{
 		name: 'youtube9',
		price: 0,
 		description: "blablabla description youtube",
 		analysis: "blablabla analysis youtube",
 	#	pros: Pro.where(id: [4,5]),
 	#	cons: Con.where(id: [4,5]),
 		released: true,
 		url: "https://itunes.apple.com/us/app/youtube/id544007664?mt=8",
 		category: categories.first
 	},
 	{
 		name: 'youtube10',
		price: 0,
 		description: "blablabla description youtube",
 		analysis: "blablabla analysis youtube",
 	#	pros: Pro.where(id: [4,5]),
 	#	cons: Con.where(id: [4,5]),
 		released: true,
 		url: "https://itunes.apple.com/us/app/youtube/id544007664?mt=8",
 		category: categories.first
 	},
 	{
 		name: 'youtube11',
		price: 0,
 		description: "blablabla description youtube",
 		analysis: "blablabla analysis youtube",
 	#	pros: Pro.where(id: [4,5]),
 	#	cons: Con.where(id: [4,5]),
 		released: true,
 		url: "https://itunes.apple.com/us/app/youtube/id544007664?mt=8",
 		category: categories.first
 	},
 	{
 		name: '1youtube',
		price: 0,
 		description: "blablabla description youtube",
 		analysis: "blablabla analysis youtube",
 	#	pros: Pro.where(id: [4,5]),
 	#	cons: Con.where(id: [4,5]),
 		released: true,
 		url: "https://itunes.apple.com/us/app/youtube/id544007664?mt=8",
 		category: categories.first
 	},
 	{
 		name: '2youtube',
		price: 0,
 		description: "blablabla description youtube",
 		analysis: "blablabla analysis youtube",
 	#	pros: Pro.where(id: [4,5]),
 	#	cons: Con.where(id: [4,5]),
 		released: true,
 		url: "https://itunes.apple.com/us/app/youtube/id544007664?mt=8",
 		category: categories.first
 	},
 	{
 		name: '3youtube',
		price: 0,
 		description: "blablabla description youtube",
 		analysis: "blablabla analysis youtube",
 	#	pros: Pro.where(id: [4,5]),
 	#	cons: Con.where(id: [4,5]),
 		released: true,
 		url: "https://itunes.apple.com/us/app/youtube/id544007664?mt=8",
 		category: categories.first
 	},
 	{
 		name: '4youtube',
		price: 0,
 		description: "blablabla description youtube",
 		analysis: "blablabla analysis youtube",
 	#	pros: Pro.where(id: [4,5]),
 	#	cons: Con.where(id: [4,5]),
 		released: true,
 		url: "https://itunes.apple.com/us/app/youtube/id544007664?mt=8",
 		category: categories.first
 	},
 	{
 		name: '5youtube',
		price: 0,
 		description: "blablabla description youtube",
 		analysis: "blablabla analysis youtube",
 	#	pros: Pro.where(id: [4,5]),
 	#	cons: Con.where(id: [4,5]),
 		released: true,
 		url: "https://itunes.apple.com/us/app/youtube/id544007664?mt=8",
 		category: categories.first
 	},
 	{
 		name: '6youtube',
		price: 0,
 		description: "blablabla description youtube",
 		analysis: "blablabla analysis youtube",
 	#	pros: Pro.where(id: [4,5]),
 	#	cons: Con.where(id: [4,5]),
 		released: true,
 		url: "https://itunes.apple.com/us/app/youtube/id544007664?mt=8",
 		category: categories.first
 	},
 	{
 		name: '7youtube',
		price: 0,
 		description: "blablabla description youtube",
 		analysis: "blablabla analysis youtube",
 	#	pros: Pro.where(id: [4,5]),
 	#	cons: Con.where(id: [4,5]),
 		released: true,
 		url: "https://itunes.apple.com/us/app/youtube/id544007664?mt=8",
 		category: categories.first
 	},
 	{
 		name: '8youtube',
		price: 0,
 		description: "blablabla description youtube",
 		analysis: "blablabla analysis youtube",
 	#	pros: Pro.where(id: [4,5]),
 	#	cons: Con.where(id: [4,5]),
 		released: true,
 		url: "https://itunes.apple.com/us/app/youtube/id544007664?mt=8",
 		category: categories.first
 	},
 	{
 		name: '9youtube',
		price: 0,
 		description: "blablabla description youtube",
 		analysis: "blablabla analysis youtube",
 	#	pros: Pro.where(id: [4,5]),
 	#	cons: Con.where(id: [4,5]),
 		released: true,
 		url: "https://itunes.apple.com/us/app/youtube/id544007664?mt=8",
 		category: categories.first
 	},
 	{
 		name: '10youtube',
		price: 0,
 		description: "blablabla description youtube",
 		analysis: "blablabla analysis youtube",
 	#	pros: Pro.where(id: [4,5]),
 	#	cons: Con.where(id: [4,5]),
 		released: true,
 		url: "https://itunes.apple.com/us/app/youtube/id544007664?mt=8",
 		category: categories.second
 	},
 	{
 		name: '11youtube',
		price: 0,
 		description: "blablabla description youtube",
 		analysis: "blablabla analysis youtube",
 	#	pros: Pro.where(id: [4,5]),
 	#	cons: Con.where(id: [4,5]),
 		released: true,
 		url: "https://itunes.apple.com/us/app/youtube/id544007664?mt=8",
 		category: categories.second
 	},
 	{
 		name: '12youtube',
		price: 0,
 		description: "blablabla description youtube",
 		analysis: "blablabla analysis youtube",
 	#	pros: Pro.where(id: [4,5]),
 	#	cons: Con.where(id: [4,5]),
 		released: true,
 		url: "https://itunes.apple.com/us/app/youtube/id544007664?mt=8",
 		category: categories.second
 	},
 	{
 		name: '13youtube',
		price: 0,
 		description: "blablabla description youtube",
 		analysis: "blablabla analysis youtube",
 	#	pros: Pro.where(id: [4,5]),
 	#	cons: Con.where(id: [4,5]),
 		released: true,
 		url: "https://itunes.apple.com/us/app/youtube/id544007664?mt=8",
 		category: categories.second
 	},
 	{
 		name: '14youtube',
		price: 0,
 		description: "blablabla description youtube",
 		analysis: "blablabla analysis youtube",
 	#	pros: Pro.where(id: [4,5]),
 	#	cons: Con.where(id: [4,5]),
 		released: true,
 		url: "https://itunes.apple.com/us/app/youtube/id544007664?mt=8",
 		category: categories.second
 	},
 	{
 		name: '15youtube',
		price: 0,
 		description: "blablabla description youtube",
 		analysis: "blablabla analysis youtube",
 	#	pros: Pro.where(id: [4,5]),
 	#	cons: Con.where(id: [4,5]),
 		released: true,
 		url: "https://itunes.apple.com/us/app/youtube/id544007664?mt=8",
 		category: categories.second
 	},
 	{
 		name: '16youtube',
		price: 0,
 		description: "blablabla description youtube",
 		analysis: "blablabla analysis youtube",
 	#	pros: Pro.where(id: [4,5]),
 	#	cons: Con.where(id: [4,5]),
 		released: true,
 		url: "https://itunes.apple.com/us/app/youtube/id544007664?mt=8",
 		category: categories.second
 	},
 	{
 		name: '17youtube',
		price: 0,
 		description: "blablabla description youtube",
 		analysis: "blablabla analysis youtube",
 	#	pros: Pro.where(id: [4,5]),
 	#	cons: Con.where(id: [4,5]),
 		released: true,
 		url: "https://itunes.apple.com/us/app/youtube/id544007664?mt=8",
 		category: categories.second
 	},
 	{
 		name: '18youtube',
		price: 0,
 		description: "blablabla description youtube",
 		analysis: "blablabla analysis youtube",
 	#	pros: Pro.where(id: [4,5]),
 	#	cons: Con.where(id: [4,5]),
 		released: true,
 		url: "https://itunes.apple.com/us/app/youtube/id544007664?mt=8",
 		category: categories.second
 	},
 	{
 		name: 'youtube3',
		price: 0,
 		description: "blablabla description youtube",
 		analysis: "blablabla analysis youtube",
 	#	pros: Pro.where(id: [4,5]),
 	#	cons: Con.where(id: [4,5]),
 		released: true,
 		url: "https://itunes.apple.com/us/app/youtube/id544007664?mt=8",
 		category: categories.second
 	}
 ])
pros = Pro.create([
	{content: "blablabla1pro",
		app: apps.first},
	{content: "blablabla2pro",
		app: apps.first},
	{content: "blablabla3pro",
		app: apps.first},
	{content: "blablabla4pro",
		app: apps.first},
	{content: "blablabla5pro",
		app: apps.second},
	{content: "blablabla6pro",
		app: apps.second},
	{content: "blablabla7pro",
		app: apps.second},
	{content: "blablabla8pro",
		app: apps.second}
	])

cons = Con.create([
	{content: "blablabla1con",
		app: apps.second},
	{content: "blablabla2con",
		app: apps.second},
	{content: "blablabla3con",
		app: apps.second},
	{content: "blablabla4con",
		app: apps.second},
	{content: "blablabla5con",
		app: apps.second},
	{content: "blablabla6con",
		app: apps.second},
	{content: "blablabla7con",
		app: apps.first},
	{content: "blablabla8con",
		app: apps.first},
	{content: "blablabla9con",
		app: apps.first},
	{content: "blablabla10con",
		app: apps.first},
	{content: "blablabla11con",
		app: apps.first},
	{content: "blablabla12con",
		app: apps.first},
	{content: "blablabla13con",
		app: apps.first}
	])
Top10.create([
	{
		app: apps.first,
		rank: 2
	},
	{
		app: apps.second,
		rank:1
	}
])

User.create!(email: "ishu121@hotmail.com", password: "dragon66")
User.create!(email: "f.bassard@gmail.com", password: "kapibara13", admin: true)