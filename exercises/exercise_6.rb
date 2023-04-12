require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

# 3. Add some data into employees. Here's an example of one (note how it differs from how you create stores): 
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
# 4. Go ahead and create some more employees using the create method. You can do this by making multiple calls to create (like you have before.) No need to assign the employees to variables though. Create them through the `@store#` instance variables that you defined in previous exercises. Create a bunch under `@store1` (Burnaby) and `@store2` (Richmond). Eg: `@store1.employees.create(...)`.
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 60)
@store1.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 60)
@store1.employees.create(first_name: "Joe", last_name: "Doe", hourly_rate: 60)
@store1.employees.create(first_name: "Aliuce", last_name: "Smith", hourly_rate: 60)
@store1.employees.create(first_name: "Bob", last_name: "Brown", hourly_rate: 60)

@store2.employees.create(first_name: "Michael", last_name: "Jackson", hourly_rate: 60)
@store2.employees.create(first_name: "Elon", last_name: "Mask", hourly_rate: 60)
@store2.employees.create(first_name: "Steve", last_name: "Jobs", hourly_rate: 60)
@store2.employees.create(first_name: "Jack", last_name: "Darcey", hourly_rate: 60)
@store2.employees.create(first_name: "Jon", last_name: "Hale", hourly_rate: 60)

puts "There are #{Employee.count} employees in the database."
