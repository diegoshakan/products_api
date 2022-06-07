# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create(username: "diego", email:"diego@example.com", password: "changeme", password_confirmation: "changeme")
user2 = User.create(username: "diego2", email:"diego2@example.com", password: "changeme", password_confirmation: "changeme")

category1 = Category.create(name: "Calçados", user: user1)
category2 = Category.create(name: "Bolsas", user: user2)

Product.create(name: "Chinelo Rider", description: "Made in Brazil", price: 15.50, quantity: 20, category: category1, user: user1)
Product.create(name: "Bolsa de Praia", description: "Made in Brazil", price: 25, quantity: 5, category: category2, user: user2)