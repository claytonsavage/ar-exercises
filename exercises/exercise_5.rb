require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
# Exercise 5: Calculations
# Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method.
# On the next line, also output the average annual revenue for all stores.
# Output the number of stores that are generating $1M or more in annual sales. Hint: Chain together where and size (or count) Active Record methods.


sum_stores = Store.sum(:annual_revenue)
p "The sum of revenue for all stores is #{sum_stores} "
avg_stores = sum_stores / Store.count
p "The average revenue per store is #{avg_stores} "

over_a_million = Store.where("annual_revenue > ?", 1000000).count
p "This many stores make over a million #{over_a_million}"
