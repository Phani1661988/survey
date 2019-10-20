# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.create(email: 'admin@surveyweb.com', password: '12345678', password_confirmation: '12345678', is_admin: true)

user1 = User.create(email: 'user1@surveyweb.com', password: '12345678', password_confirmation: '12345678')

user2 = User.create(email: 'user2@surveyweb.com', password: '12345678', password_confirmation: '12345678')

user3 = User.create(email: 'user3@surveyweb.com', password: '12345678', password_confirmation: '12345678')

user4 = User.create(email: 'user4@surveyweb.com', password: '12345678', password_confirmation: '12345678')

user5 = User.create(email: 'user5@surveyweb.com', password: '12345678', password_confirmation: '12345678')

user6 = User.create(email: 'user6@surveyweb.com', password: '12345678', password_confirmation: '12345678')

user7 = User.create(email: 'user7@surveyweb.com', password: '12345678', password_confirmation: '12345678')