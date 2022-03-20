# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

hope = User.create(name: 'Hope', email: 'hope@jons.com', password: '123456', password_confirmation: '123456')
hope.articles.create(title: 'Test', text: 'test test test')
hope.articles.create(title: 'Test 1', text: 'test test test 2')
hope.articles.create(title: 'Test 2', text: 'test test test 3')
hope.articles.create(title: 'Test 3', text: 'test test test 4')
hope.articles.create(title: 'Test 6', text: 'test test test 5')