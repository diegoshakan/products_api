# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

type_user1 = TypeUser.create(label: "admin", description: "user roles like a boss", situation: "active")
type_user2 = TypeUser.create(label: "normal", description: "simple user", situation: "active")

user1 = User.create(username: "Gandalf", email:"gandalf@example.com", password: "changeme", password_confirmation: "changeme", type_user: type_user1)
user2 = User.create(username: "Frodo", email:"frodo@example.com", password: "changeme", password_confirmation: "changeme", type_user: type_user2)

category1 = Category.create(name: "Calçados", user: user1)
category2 = Category.create(name: "Bolsas", user: user2)

Product.create(name: "Chinelo Rider", description: "Made in Brazil", price: 15.50, quantity: 20, category: category1, user: user1)
Product.create(name: "Bolsa de Praia", description: "Made in Brazil", price: 25, quantity: 5, category: category2, user: user2)