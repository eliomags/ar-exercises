require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

# 1. Borrowing and modifying the code from Exercise one, create 3 more stores:
Store.create(name: 'Surrey', annual_revenue: 224_000, mens_apparel: false, womens_apparel: true)
Store.create(name: 'Whistler', annual_revenue: 1_900_000, mens_apparel: true, womens_apparel: false)
Store.create(name: 'Yaletown', annual_revenue: 430_000, mens_apparel: true, womens_apparel: true)
puts "There are #{Store.count} stores in the database."

# 2. Using the `where` class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable `@mens_stores`.
@mens_stores = Store.where(mens_apparel: true)

# 3. Loop through each of these stores and output their name and annual revenue on each line.
@mens_stores.each do |store|
  puts "#{store.name} has an annual revenue of #{store.annual_revenue}"
end

# 4. Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.
@womens_stores = Store.where(womens_apparel: true).where('annual_revenue < 1000000')

# 5. Loop through each of these stores and output their name and annual revenue on each line.
@womens_stores.each do |store|
    puts "#{store.name} has an annual revenue of #{store.annual_revenue}"
    end


