# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding the database...."

users = User.create([
	{username: "neil176", password: "password", email: "n@n.com"},
	{username: "other_guy", password: "password", email: "o@n.com"},
	{username: "third_person", password: "password", email: "3@3.com"},
	{username: "fourth_person", password: "password", email: "4@4.com"},

])

follows = Follow.create([
	{follower: User.all[0], followee: User.all[1]},
	{follower: User.all[0], followee: User.all[2]},
	{follower: User.all[0], followee: User.all[3]},
	{follower: User.all[1], followee: User.all[0]},
	{follower: User.all[3], followee: User.all[1]},
	{follower: User.all[3], followee: User.all[2]}

])

projects = Project.create([
	{title: "my first project", user_id: 1},
	{title: "my second project", user_id: 1},
	{title: "my third project", user_id: 1},

	{title: "user2's first project", user_id: 2},
	{title: "user2's second project", user_id: 2},
	{title: "user2's third project", user_id: 2},


	{title: "user3's first project", user_id: 3},
	{title: "user3's second project", user_id: 3},
	{title: "user3's third project", user_id: 3},

])

items = Item.create([
	{description: "item number one", project_id: 1, image: "https://i.imgur.com/UL8gyZi.jpg?1"},
	{description: "item number 2", project_id: 1, image: "https://i.imgur.com/UL8gyZi.jpg?1"},
	{description: "item number 3", project_id: 1, image: "https://i.imgur.com/UL8gyZi.jpg?1"},
	{description: "item number 4", project_id: 2, image: "https://i.imgur.com/UL8gyZi.jpg?1"},
	{description: "item number 5", project_id: 2, image: "https://i.imgur.com/UL8gyZi.jpg?1"},
	{description: "item number 6", project_id: 2, image: "https://i.imgur.com/UL8gyZi.jpg?1"},
	{description: "item number 7", project_id: 3, image: "https://i.imgur.com/UL8gyZi.jpg?1"},
	{description: "item number 8", project_id: 3, image: "https://i.imgur.com/UL8gyZi.jpg?1"},
	{description: "item number 9", project_id: 3, image: "https://i.imgur.com/UL8gyZi.jpg?1"},
	{description: "item number 10", project_id: 4, image: "https://i.imgur.com/UL8gyZi.jpg?1"},
	{description: "item number 11", project_id: 4, image: "https://i.imgur.com/UL8gyZi.jpg?1"},
	{description: "item number 12", project_id: 5, image: "https://i.imgur.com/UL8gyZi.jpg?1"},
	{description: "item number 13", project_id: 5, image: "https://i.imgur.com/UL8gyZi.jpg?1"},
	{description: "item number 14", project_id: 6, image: "https://i.imgur.com/UL8gyZi.jpg?1"},
	{description: "item number 15", project_id: 6, image: "https://i.imgur.com/UL8gyZi.jpg?1"},
	{description: "item number 16", project_id: 7, image: "https://i.imgur.com/UL8gyZi.jpg?1"},
	{description: "item number 17", project_id: 7, image: "https://i.imgur.com/UL8gyZi.jpg?1"},
	{description: "item number 18", project_id: 8, image: "https://i.imgur.com/UL8gyZi.jpg?1"},
	{description: "item number 19", project_id: 9, image: "https://i.imgur.com/UL8gyZi.jpg?1"},
	{description: "item number 20", project_id: 1, image: "https://i.imgur.com/UL8gyZi.jpg?1"},

])


puts "Seeding complete!"
	
