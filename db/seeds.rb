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

category1 = Category.create(label: "Cajado", situation: "active")
category2 = Category.create(label: "Espada", situation: "active")

sub_category1 = SubCategory.create(label: "Fogo", situation: "active", category: category1)
sub_category2 = SubCategory.create(label: "Adagas", situation: "active", category: category2)

Product.create(name: "Cajado de Fogo", description: "Made in Terra Média",
               price_wholesale: 15.50, retail_price: 19.50, quantity: 20,
               category: category1, sub_category: sub_category1, situation: "active")
Product.create(name: "Ferrão de Abelha", description: "Made in Terra Média",
               price_wholesale: 25.00, retail_price: 29.50, quantity: 5,
               category: category2, sub_category: sub_category2, situation: "active")