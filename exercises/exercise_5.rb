require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@total_for_company = Store.all.sum(:annual_revenue)

puts "Total annual income of the company is $#{@total_for_company}"

@average = Store.all.average(:annual_revenue)

puts "the company's average annual revenue for each store is $#{@average}0"

@OneM_count = Store.where("annual_revenue > 1000000").count
@more_than_1M = Store.where("annual_revenue > 1000000")


@more_than_1M.each do |store|
puts "#{store.name} have more than 1M in revenue"
end

puts "there are #{@OneM_count} of them"