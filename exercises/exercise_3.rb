require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

# 1. Load the third store (into `@store3`) as you did the other two before.
@store3 = Store.find(3)
# 2. Using Active Record's `destroy` method, delete the store from the database.
@store3.destroy
puts "There are #{Store.count} stores in the database."
