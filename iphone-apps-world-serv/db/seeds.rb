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


User.create!(email: "j.huguet9@gmail.com", password: "EggNog57", admin: true)
User.create!(email: "f.bassard@gmail.com", password: "kapibara13", admin: true)