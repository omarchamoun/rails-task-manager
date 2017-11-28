# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Started seed"
puts "Emptying DB!"

Task.destroy_all

10.times do
  task = Task.new(name: Faker::Lorem.words.sample, description: Faker::Lorem.sentence)

  puts "#{task.name} saved!" if task.save
end

puts "finished seeding"
