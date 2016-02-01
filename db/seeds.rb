# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first
Drink.create!(title: "Margarita")
Drink.create!(title: "Medias de Seda")
Drink.create!(title: "Ice Tea")
Drink.create!(title: "Capuchino")
Drink.create!(title: "Cafe")

p "Drinkies created: #{Drink.all.count}"
