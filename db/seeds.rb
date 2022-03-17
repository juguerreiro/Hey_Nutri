# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'


carbs = 'db/carbs.csv'
fibra = 'db/fibra.csv'
proteins = 'db/proteins.csv'

Meal.destroy_all
Protein.destroy_all
Carb.destroy_all
Fibra.destroy_all

puts "database cleaned"
 CSV.foreach(carbs, headers: :first_row) do |row|
  Carb.create!(name: row.to_hash.values_at("Nome")[0], calories: row.to_hash.values_at("Calorias")[0].to_i, sugar: row.to_hash.values_at("Carboidrato")[0].to_i, breakfast: row.to_hash.values_at("Breakfast")[0])
 end

 CSV.foreach(fibra, headers: :first_row) do |row|
  Fibra.create!(name: row.to_hash.values_at("Nome")[0], calories: row.to_hash.values_at("Calorias")[0].to_i)
 end

 CSV.foreach(proteins, headers: :first_row) do |row|
  Protein.create!(name: row.to_hash.values_at("Nome")[0], calories: row.to_hash.values_at("Calorias")[0].to_i, iron: row.to_hash.values_at("Ferro")[0].to_i, breakfast: row.to_hash.values_at("Breakfast")[0])
 end
