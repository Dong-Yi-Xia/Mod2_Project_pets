# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# species = ["Dog", "Cat", "Pigeon", "Rabbit", "Fish", "Snake"]
# gender = ["male","female"]

# Pet.create!(name:Faker::Creature::Dog.name, species: species.sample, gender:gender.sample, bio:    )

Pet.destroy_all
User.destroy_all
Rent.destroy_all
Adoption.destroy_all
Review.destroy_all

Pet.reset_pk_sequence
User.reset_pk_sequence
Rent.reset_pk_sequence
Adoption.reset_pk_sequence
Review.reset_pk_sequence

species_d = "dog"
species_c = "cat"
species_r = "rabbit"
species_p = "pigeon"
species_f = "fish"
species_s = "snake"

gender_f = "female"
gender_m = "male"

bio1 = "Sugar is friendly, affectionate, fun, and playful. Her favorite game is tug of war and she just loves stuffed dog toys."
bio2 = "Charlie is a young, curious, and handsome pup. He loves being petted, playing with a water hose, and enjoys attention."
bio3 = "Tabitha has silky, soft fur and is a total snuggle bug! She loves affection and loves to be scooped up and carried around."
bio4 = "A natural charmer, Fritz makes fast friends with everyone he comes in contact with. He loves to watch the world from a sunny window."
bio5 = "Honey Bunny is a little sweetheart with a gentle, mellow soul. This little girl loves giving soft kisses to when you cuddle with her." 
bio6 = "Pupperino is an incredibly sweet young boy who is hard to slow down! He is ready to partake in snatching pizza from your hands!"
bio7 = "Lily is a lap dog who just loves to shower you with kisses. She enjoys spending time outside and is a huge fan of playing fetch with tennis balls." 
bio8 = "Bubs is a coy gentleman with a shy side, but it doesn’t take long for him to warm up. He loves belly-rubs, rolling around and soaking up all the attention."
bio9 = "Don’t let looks fool you, Willow is fearless and outgoing! Willow is a very friendly girl who loves exploring and playing with a lot of toys."
bio10 = "Despite his name, Wolf is a soft and gentle soul. Highly intelligent and motivated by food, he will follow you everywhere if you have a treat!" 
bio11 = "Missy is a super sweet, adorable, friendly pup. Full of spunk, Missy loves to explore and she can often be found burrowing under clothes and blankets."
bio12 = "Shy at first, Doc is often found snuggling under pillows. He is easily won over with ear scratches and a constant supply of belly rubs." 
bio13 = "Mimosa loves calling the shots and beckons for undivided attention. She loves playing with toys and will find every opportunity to climb on your lap."
bio14 = "Please meet Boom Boom, a big personality in a small package. This dapper gent is feisty, friendly, and loves deep cheek rubs and pets!"
bio15 = "Xena is truly a sweet and loving girl who lives up to her name. Very playful and intelligent, Xena loves learning new tricks and playing fetch."
bio16 = "Ollie is social, spunky, and a bit on the clumsy side when chasing after squirrels! He is such a good boy and he has never met a person he did not like!"
bio17 = "Ruby is an adorable, loyal girl who always has your back. She loves to code and can complete all of your homework labs for you with her magical powers."
bio18 = "Deeply misunderstood and wrongly judged for his appearance, Li’l Britches would love nothing more than to cuddle in your hand and listen to you talk all day."
bio19 = "Glimmer is a beautiful master of her domain and has big eyes for the world. Although she has a short attention span, she’s always happy to see you!"
bio20 = "Peanut would love to have a forever home with a software engineer. Peanut loves to code and may or may not know all the secrets of the universe. Won’t you give him a home?"
bio21 = "Fierce and loyal, Korra is a bad-ass and has an extraordinary ability to bend all elements around her, as long she gets plenty of love, treats, and toys!"

# variable = "string"

# pet seed data with variable usage

dong = User.create(name:"Dong", password: "abc123" )
manny = User.create(name:"Manny", password: "123abc")

pet1 = Pet.create(name: "Sugar", species: species_d, gender: gender_f, bio: bio1, adoption_status: "yes", image_url: "Pet_01_Sugar.jpg")
pet2 = Pet.create(name: "Charlie", species: species_d, gender: gender_m, bio: bio2, adoption_status: "yes", image_url: "Pet_02_Charlie.jpg")
pet3 = Pet.create(name: "Tabitha", species: species_c, gender: gender_f, bio: bio3, adoption_status: "yes", image_url: "Pet_03_Tabitha.jpg")
pet4 = Pet.create(name: "Fritz", species: species_c, gender: gender_m, bio: bio4, adoption_status: "yes", image_url: "Pet_04_Fritz.jpg")
pet5 = Pet.create(name: "Honey Bunny", species: species_r, gender: gender_f, bio: bio5, adoption_status: "yes", image_url: "Pet_05_Honey_Bunny.jpg")
pet6 = Pet.create(name: "Pupperoni", species: species_d, gender: gender_m, bio: bio6, adoption_status: "yes", image_url: "Pet_06_Pupperoni.jpg")
pet7 = Pet.create(name: "Lily", species: species_d, gender: gender_f, bio: bio7, adoption_status: "yes", image_url: "Pet_07_Lily.jpg")
pet8 = Pet.create(name: "Bubs", species: species_c, gender: gender_m, bio: bio8, adoption_status: "yes", image_url: "Pet_08_Bubs.jpg")
pet9 = Pet.create(name: "Willow", species: species_r, gender: gender_f, bio: bio9, adoption_status: "yes", image_url: "Pet_09_Willow.jpg")
pet10 = Pet.create(name: "Wolf", species: species_d, gender: gender_m, bio: bio10, adoption_status: "no", image_url: "Pet_10_Wolf.jpg")
pet11 = Pet.create(name: "Missy", species: species_d, gender: gender_f, bio: bio11, adoption_status: "no", image_url: "Pet_11_Missy.jpg")
pet12 = Pet.create(name: "Doc", species: species_c, gender: gender_m, bio: bio12, adoption_status: "no", image_url: "Pet_12_Doc.jpg")
pet13 = Pet.create(name: "Mimosa", species: species_c, gender: gender_f, bio: bio13, adoption_status: "no", image_url: "Pet_13_Mimosa.jpg")
pet14 = Pet.create(name: "Boom Boom", species: species_r, gender: gender_m, bio: bio14, adoption_status: "no", image_url: "Pet_14_Boom_Boom.jpg")
pet15 = Pet.create(name: "Xena", species: species_d, gender: gender_f, bio: bio15, adoption_status: "no", image_url: "Pet_15_Xena.jpg")
pet16 = Pet.create(name: "Ollie", species: species_d, gender: gender_m, bio: bio16, adoption_status: "no", image_url: "Pet_16_Ollie.jpg")
pet17 = Pet.create(name: "Ruby", species: species_d, gender: gender_f, bio: bio17, adoption_status: "no", image_url: "Pet_17_Ruby.jpg")
pet18 = Pet.create(name: "Li’l Britches", species: species_s, gender: gender_m, bio: bio18, adoption_status: "no", image_url: "Pet_18_Lil_Britches.jpg")
pet19 = Pet.create(name: "Glimmer", species: species_f, gender: gender_f, bio: bio19, adoption_status: "no", image_url: "Pet_19_Glimmer.jpg")
pet20 = Pet.create(name: "Peanut", species: species_p, gender: gender_m, bio: bio20, adoption_status: "yes", image_url: "Pet_20_Peanut.jpg")
pet21 = Pet.create(name: "Korra", species: species_d, gender: gender_f, bio: bio21, adoption_status: "yes", image_url: "Pet_21_Korra.jpg")

# pet seed data in long form

# pet1 = Pet.create(name: "Sugar", species: "dog", gender: "female", bio: "Sugar is friendly, affectionate, fun, and playful. Her favorite game is tug of war and she just loves stuffed dog toys.")

# pet2 = Pet.create(name: "Charlie", species: "dog", gender: "male", bio: "Charlie is a young, curious, and handsome pup. He loves being petted, playing with a water hose, and enjoys attention.")

# pet3 = Pet.create(name: "Tabitha", species: "cat", gender: "female", bio: "Tabitha has silky, soft fur and is a total snuggle bug! She loves affection and loves to be scooped up and carried around.")

# pet4 = Pet.create(name: "Fritz", species: "cat", gender: "male", bio: "A natural charmer, Fritz makes fast friends with everyone he comes in contact with. He loves to watch the world from a sunny window.")

# pet5 = Pet.create(name: "Honey Bunny", species: "rabbit", gender: "female", bio: "Honey Bunny is a little sweetheart with a gentle, mellow soul. This little girl loves giving soft kisses to when you cuddle with her.")

# pet6 = Pet.create(name: "Pupperino", species: "dog", gender: "male", bio: "Pupperino is an incredibly sweet young boy who is hard to slow down! He is ready to partake in snatching pizza from your hands!")

# pet7 = Pet.create(name: "Lily", species: "dog", gender: "female", bio: "Lily is a lap dog who just loves to shower you with kisses. She enjoys spending time outside and is a huge fan of playing fetch with tennis balls.")

# pet8 = Pet.create(name: "Bubs", species: "cat", gender: "male", bio: "Bubs is a coy gentleman with a shy side, but it doesn’t take long for him to warm up. He loves belly-rubs, rolling around and soaking up all the attention.")

# pet9 = Pet.create(name: "Willow", species: "rabbit", gender: "female", bio: "Don’t let looks fool you, Willow is fearless and outgoing! Willow is a very friendly girl who loves exploring and playing with a lot of toys.")

# pet10 = Pet.create(name: "Wolf", species: "dog", gender: "male", bio: "Despite his name, Wolf is a soft and gentle soul. Highly intelligent and motivated by food, he will follow you everywhere if you have a treat!")

# pet11 = Pet.create(name: "Missy", species: "dog", gender: "female", bio: "Missy is a super sweet, adorable, friendly pup. Full of spunk, Missy loves to explore and she can often be found burrowing under clothes and blankets.")

# pet12 = Pet.create(name: "Doc", species: "cat", gender: "male", bio: "Shy at first, Doc is often found snuggling under pillows. He is easily won over with ear scratches and a constant supply of belly rubs.")

# pet13 = Pet.create(name: "Mimosa", species: "cat", gender: "female", bio: "Mimosa loves calling the shots and beckons for undivided attention. She loves playing with toys and will find every opportunity to climb on your lap.")

# pet14 = Pet.create(name: "Boom Boom", species: "rabbit", gender: "male", bio: "Please meet Boom Boom, a big personality in a small package. This dapper gent is feisty, friendly, and loves deep cheek rubs and pets!")

# pet15 = Pet.create(name: "Xena", species: "dog", gender: "female", bio: "Xena is truly a sweet and loving girl who lives up to her name. Very playful and intelligent, Xena loves learning new tricks and playing fetch.")

# pet16 = Pet.create(name: "Ollie", species: "dog", gender: "male", bio: "Ollie is social, spunky, and a bit on the clumsy side when chasing after squirrels! He is such a good boy and he has never met a person he did not like!")

# pet17 = Pet.create(name: "Ruby", species: "dog", gender: "female", bio: "Ruby is an adorable, loyal girl who always has your back. She loves to code and can complete all of your homework labs for you with her magical powers.")

# pet18 = Pet.create(name: "Li’l Britches", species: "snake", gender: "male", bio: "Deeply misunderstood and wrongly judged for his appearance, Li’l Britches would love nothing more than to cuddle in your hand and listen to you talk all day.")

# pet19 = Pet.create(name: "Glimmer", species: "fish", gender: "female", bio: "Glimmer is a beautiful master of her domain and has big eyes for the world. Although she has a short attention span, she’s always happy to see you!")

# pet20 = Pet.create(name: "Peanut", species: "pigeon", gender: "male", bio: "Peanut would love to have a forever home with a software engineer. Peanut loves to code and may or may not know all the secrets of the universe. Won’t you give him a home?")

