require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...


Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)

Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)

Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

puts "#{Store.count} should be 5 - we deleted in in a previous exercise"

@mens_stores = Store.where(mens_apparel: true, womens_apparel: false)

@mens_stores.each  do |store|
  puts "Store that only carry mens : #{store.name}"
end

@womens_stores_under_1M = Store.where(womens_apparel: true).where("annual_revenue > 1000000")

@womens_stores_under_1M.each do |store|
  puts "#{store.name} carries womens apparel and has an annual income under 1 million"
end