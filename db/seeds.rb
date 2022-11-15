# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Dragon.destroy_all

user = User.create!(email: "aldenwahsono15@icloud.com", password: "123123", first_name: "Alden", last_name: "Wahsono", username: "Boorito15", tribe: "Hooligan", gender: "Male" )
dragon = Dragon.create!(name: "Toothless", species: "Night Fury", rating: 5, speed: 10, fire_power: 10, armour: 7, user: user, description: "Once thought of as the “unholy offspring of lightning and death itself,” Toothless (20 in dragon years) has proven to be much more of a giant, winged pussycat than the stuff of nightmares.

Playful, inquisitive, and intelligent, Toothless is more Hiccup’s best friend than his pet. He is extremely protective of his Viking soul mate, and will stop at nothing to guard him from all harm. As the last known specimen of the Night Fury species, Toothless is indisputably special. He commands respect from dragons and humans alike.")
