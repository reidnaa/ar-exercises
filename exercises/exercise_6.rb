require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Snoopy", last_name: "Brown", hourly_rate: 60)
@store1.employees.create(first_name: "Reid", last_name: "Naaykens", hourly_rate: 120)
@store1.employees.create(first_name: "Beth", last_name: "Patterson", hourly_rate: 40)
@store1.employees.create(first_name: "Randy", last_name: "Quaid", hourly_rate: 10)

@store2.employees.create(first_name: "Chevy", last_name: "Chase", hourly_rate: 15)
@store2.employees.create(first_name: "Juliette", last_name: "Lewis", hourly_rate: 25)
@store2.employees.create(first_name: "Johnny", last_name: "Galecki", hourly_rate: 25)
@store2.employees.create(first_name: "Beverly", last_name: "D'Angelo", hourly_rate: 35)
