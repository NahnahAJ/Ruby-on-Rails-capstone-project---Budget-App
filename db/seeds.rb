# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create a main sample user.
user1 = User.create(name: "User - 1")
user2 = User.create(name: "User - 2")

# Create a few groups.
group1 = Group.create(name: "Group - 1", author_id: user1, icon: "https://cdn-icons-png.flaticon.com/128/9147/9147082.png")
group2 = Group.create(name: "Group - 2", author_id: user1, icon: "https://cdn-icons-png.flaticon.com/128/9147/9147082.png")

# Create a few transaracts.
transaract1 = Transaract.create(name: "Transaract - 1", author_id: user1, amount: 100)
transaract2 = Transaract.create(name: "Transaract - 2", author_id: user1, amount: 200)
