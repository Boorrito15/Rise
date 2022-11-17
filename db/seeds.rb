# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

# Dragon.destroy_all
# User.destroy_all

<<<<<<< HEAD
# user = User.create!(email: "aldenwahsono15@icloud.com", password: "123123", first_name: "Alden", last_name: "Wahsono", username: "Boorito15", tribe: "Hooligan", gender: "Male" )
# dragon = Dragon.create!(name: "Toothless", species: "Night Fury", rating: 5, speed: 10, fire_power: 10, armour: 7, user: user, description: "Once thought of as the “unholy offspring of lightning and death itself,” Toothless (20 in dragon years) has proven to be much more of a giant, winged pussycat than the stuff of nightmares.

# Playful, inquisitive, and intelligent, Toothless is more Hiccup’s best friend than his pet. He is extremely protective of his Viking soul mate, and will stop at nothing to guard him from all harm. As the last known specimen of the Night Fury species, Toothless is indisputably special. He commands respect from dragons and humans alike.")
=======
user = User.create!(email: "aldenwahsono15@icloud.com", password: "123123", first_name: "Alden", last_name: "Wahsono", username: "Boorito15", tribe: "Hooligan", gender: "Male" )
dragon = Dragon.new(name: "Toothless", species: "Night Fury", rating: 5, speed: 10, fire_power: 10, armour: 7, user: user, description: "Once thought of as the “unholy offspring of lightning and death itself,” Toothless (20 in dragon years) has proven to be much more of a giant, winged pussycat than the stuff of nightmares.

Playful, inquisitive, and intelligent, Toothless is more Hiccup’s best friend than his pet. He is extremely protective of his Viking soul mate, and will stop at nothing to guard him from all harm. As the last known specimen of the Night Fury species, Toothless is indisputably special. He commands respect from dragons and humans alike.")
pic = URI.open("https://www.dreamworks.com/images/temp/explore/dragons/toothless/dragon-hero.png")
dragon.photo.attach(io: pic, filename: "toothless.png", content_type: "image/png")
dragon.save!
>>>>>>> 397a644c4cb57368a13b986067a04bf80453260d

# dragon = Dragon.create!(name: "Stormfly", species: "Deadly Nadder", rating: 5, speed: 4, fire_power: 7, armour: 6, user: user, description: "Although she preens and grooms herself like the most fastidious of birds, Stormfly actually possesses a playful spirit.

<<<<<<< HEAD
# Whether it's winning dragon races with Astrid or fetching shiny objects, Stormfly is as game for a fun time as she is deadly in battle!")
=======
Whether it's winning dragon races with Astrid or fetching shiny objects, Stormfly is as game for a fun time as she is deadly in battle!")
pic = URI.open("https://www.dreamworks.com/images/temp/explore/dragons/stormfly/dragon-hero.png")
dragon.photo.attach(io: pic, filename: "stormfly.png", content_type: "image/png")
dragon.save!
>>>>>>> 397a644c4cb57368a13b986067a04bf80453260d

# dragon = Dragon.create!(name: "Barf & Belch", species: "Hideous Zippleback", rating: 5, speed: 5, fire_power: 5, armour: 3, user: user, description: "Much like the twins who ride them, Barf & Belch spend more time bickering than working in concert.

<<<<<<< HEAD
# The only time they do see eye-to-eye, however, is when enjoying a nice display of destruction—usually caused by Ruffnut & Tuffnut!")
=======
The only time they do see eye-to-eye, however, is when enjoying a nice display of destruction—usually caused by Ruffnut & Tuffnut!")
pic = URI.open("https://www.dreamworks.com/images/temp/explore/dragons/barf-belch/dragon-hero.png")
dragon.photo.attach(io: pic, filename: "barfbelch.png", content_type: "image/png")
dragon.save!
>>>>>>> 397a644c4cb57368a13b986067a04bf80453260d

# dragon = Dragon.create!(name: "Grump", species: "Hotburple", rating: 5, speed: 2, fire_power: 6, armour: 7, user: user, description: "Grump is not a Gronckle. He's a related, but different breed of Boulder Class dragon known as a Hotburple.

<<<<<<< HEAD
# Like a Gronckle, the Hotburple also makes lava slugs out of molten minerals, but he prefers iron ore over the Gronckle's love of rocks. As such, he eats the scraps around Gobber's stall and keeps the forge fired up with molten loogies. Personality wise, he's like a walrus -- a loud, fussy, lazy lay-about who snores obnoxiously and easily falls asleep at any given moment, even while flying. He's always in the way in Gobber's stall and he's the perfect match for Gobber's put-upon attitude. They banter like an old married couple. Otherwise, he's a lot like a Gronckle in most other ways.")
=======
Like a Gronckle, the Hotburple also makes lava slugs out of molten minerals, but he prefers iron ore over the Gronckle's love of rocks. As such, he eats the scraps around Gobber's stall and keeps the forge fired up with molten loogies. Personality wise, he's like a walrus -- a loud, fussy, lazy lay-about who snores obnoxiously and easily falls asleep at any given moment, even while flying. He's always in the way in Gobber's stall and he's the perfect match for Gobber's put-upon attitude. They banter like an old married couple. Otherwise, he's a lot like a Gronckle in most other ways.")
pic = URI.open("https://www.dreamworks.com/images/temp/explore/dragons/grump/dragon-hero.png")
dragon.photo.attach(io: pic, filename: "grump.png", content_type: "image/png")
dragon.save!
>>>>>>> 397a644c4cb57368a13b986067a04bf80453260d

# dragon = Dragon.create!(name: "Cloudjumper", species: "Stormcutter", rating: 5, speed: 4, fire_power: 0, armour: 2, user: user, description: "The owl-like Cloudjumper has been Valka's companion of choice for flying and rescuing other dragons over the last twenty years. Cloudjumper's pride, confidence, and large size lead him to think of himself as the top dragon in Valka's mountain fortress, second only to the Bewilderbeast, who is the king of all dragons in the nest.

<<<<<<< HEAD
# Due to their two decades of experience together, Cloudjumper and Valka share a wordless shorthand when flying. Whereas other dragon riders need to call out commands to turn or shoot, Cloudjumper instinctively knows when Valka wants him to move or attack, adding to their combined mystique and prowess in battle.")
=======
Due to their two decades of experience together, Cloudjumper and Valka share a wordless shorthand when flying. Whereas other dragon riders need to call out commands to turn or shoot, Cloudjumper instinctively knows when Valka wants him to move or attack, adding to their combined mystique and prowess in battle.")
pic = URI.open("https://www.dreamworks.com/images/temp/explore/dragons/cloudjumper/dragon-hero.png")
dragon.photo.attach(io: pic, filename: "cloudjumper.png", content_type: "image/png")
dragon.save!
>>>>>>> 397a644c4cb57368a13b986067a04bf80453260d
