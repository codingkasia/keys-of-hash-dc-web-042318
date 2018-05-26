# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


@smoothie = Smoothie.create(name: "Green Mango Fusion")
@ingredient = Ingredient.create(name: "mango")
Ingredient.create(name: "banana")
Ingredient.create(name: "frozen berries")
Ingredient.create(name: "kale")
Ingredient.create(name: "milk")

@smoothie.ingredients << @ingredient