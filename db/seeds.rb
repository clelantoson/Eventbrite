# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = User.create(first_name: "camille", last_name: "lelan", description: "je suis mignonne ouais ouais lol xd", email: "cam@yopmail.com", encrypted_password: "gregre")
u2 = User.create(first_name: "yann", last_name: "petitjean", description: "looooooooongue description", email: "yann@yopmail.com", encrypted_password: "nouille")
e = Event.create(start_date:"Mon, 17 Dec 2021 00:00:00 +0000", duration: 50, title: "La fievre du lundi soir", description: "longue longue longue  description", price: 10, location: "Paris", admin: u)
a = Attendance.create(stripe_customer_id: "stripecustom", user: u2, event: e)