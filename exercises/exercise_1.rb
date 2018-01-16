require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Use Active Record's create class method multiple times to create 3 stores in the database:
# Burnaby (annual_revenue of 300000, carries men's and women's apparel)
# Richmond (annual_revenue of 1260000 carries women's apparel only)
# Gastown (annual_revenue of 190000 carries men's apparel only)
# Output (puts) the number of the stores using ActiveRecord's count method, to ensure that there are three stores in the database.
# Your code goes below here ...


burnaby = Store.create(annual_revenue: 300000, womens_apparel: true, mens_apparel: true, name: 'Burnaby')
richmond = Store.create(annual_revenue: 1260000, womens_apparel: true, mens_apparel: false, name: 'Richmond')
gastown = Store.create(annual_revenue: 190000, womens_apparel: false, mens_apparel: true, name: 'Gastown')
