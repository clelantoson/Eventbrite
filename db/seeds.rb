# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Event.destroy_all
Attendance.destroy_all

u = 0
10.times do
  name = Faker::Name.unique.name
  User.create(first_name: name.split.first, last_name: name.split.last, description: Faker::Lorem.sentence(word_count: 10), email: name.downcase.split.join + "@yopmail.com", password: "123456")
  u += 1
  puts "User #{u} created !"
end

e = 0
5.times do
  Event.create(start_date: Faker::Date.forward(days: 30).to_datetime, duration: rand(1..60)*5, title: Faker::TvShows::RickAndMorty.quote, description: Faker::Lorem.sentence(word_count: 10), price: rand(1..1000), location: Faker::Address.city, admin: User.all.sample)
  e += 1
  puts "Event #{e} created !"
end

a = 0
10.times do
  Attendance.create(user: User.all.sample, event: Event.all.sample)
  a += 1
  puts "Attendance #{a} created!"
end


# u = User.create(first_name: "camille", last_name: "lelan", description: "je suis mignonne ouais ouais lol xd", email: "cam@yopmail.com", encrypted_password: "gregre")
# u2 = User.create(first_name: "yann", last_name: "petitjean", description: "looooooooongue description", email: "yann@yopmail.com", encrypted_password: "nouille")

# e = Event.create(start_date:"Mon, 17 Dec 2021 00:00:00 +0000", duration: 50, title: "La fievre du lundi soir", description: "longue longue longue  description", price: 10, location: "Paris", admin: u)
# e2 = Event.create(start_date:"Thu, 17 Fev 2022 00:00:00 +0000", duration: 50, title: "Loooolapaloozza", description: "longue longue longue  description", price: 10, location: "Paris", admin: u2)

# a = Attendance.create(stripe_customer_id: "stripecustom", user: u2, event: e)
# a2 = Attendance.create(stripe_customer_id: "stripecustom", user: u, event: e2)
