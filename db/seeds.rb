# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


users = User.create([
	{username: "neil176", password: "password", email: "n@n.com"},
	{username: "other", password: "password", email: "o@nocom"}
])

follows = Follow.create([
	{follower: User.all[0], followee: User.all[1]}
])

projects = Project.create([
	{title: "my first project", user_id: 1}
])

items = Item.create([
	{description: "item number one", project_id: 1}
])
	
