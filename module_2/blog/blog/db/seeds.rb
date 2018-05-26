# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
post1 = Post.create(title: "Post 1", text: "I am your first post!")
post2 = Post.create(title: "Post 2", text: "I am your second post. it is very humid outside and I want to stay in an AC room!")