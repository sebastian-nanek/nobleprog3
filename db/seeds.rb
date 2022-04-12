# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
users = []

5.times do    
    username = Faker::Name.first_name 
    email = Faker::Internet.email(name: username)
    users << User.create!(email: email, name: username)
end

20.times do
    Post.create!({
        title: Faker::Lorem.sentence,
        content: Faker::Lorem.sentences(number: rand(15)).join,
        user_id: users.sample
    })
end