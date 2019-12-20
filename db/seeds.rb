# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.destroy_all

s1 = Student.create(first_name: "Karina", last_name: "Macancela", active: true)
s2 = Student.create(first_name: "Jessica", last_name: "Sanchez")
s3 = Student.create(first_name: "Oliver", last_name: "Stewart", active: true)
s4 = Student.create(first_name: "Lissie", last_name: "Sanluis", active: true)
s5 = Student.create(first_name: "Nicholas", last_name: "James", active: false)

puts "It has been seeded!"