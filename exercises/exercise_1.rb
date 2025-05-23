require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

# 1. Use Active Record's `create` class method multiple times to create 3 stores in the database:
Store.create(name: 'Burnaby', annual_revenue: 300_000, mens_apparel: true, womens_apparel: true)
Store.create(name: 'Richmond', annual_revenue: 1_260_000, mens_apparel: false, womens_apparel: true)
Store.create(name: 'Gastown', annual_revenue: 190_000, mens_apparel: true, womens_apparel: false)

# 2. Output (puts) the number of the stores using ActiveRecord's `count` method, to ensure that there are three stores in the database.
puts "There are #{Store.count} stores in the database."

