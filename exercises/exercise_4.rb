require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
# Borrowing and modifying the code from Exercise one, create 3 more stores:

# Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.

surrey = Store.create(annual_revenue: 224000, womens_apparel: true, mens_apparel: false, name: 'Surrey')
whistler = Store.create(annual_revenue: 1900000, womens_apparel: false, mens_apparel: true, name: 'Whistler')
yaletown = Store.create(annual_revenue: 430000, womens_apparel: true, mens_apparel: true, name: 'Yaletown')

men_stores = Store.where(mens_apparel: true)

men_stores.each do |store|
  print store.name
  puts ": $#{ store.annual_revenue }"
end

women_stores = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)

women_stores.each do |store|
  print store.name
  puts ": $#{ store.annual_revenue }"
end