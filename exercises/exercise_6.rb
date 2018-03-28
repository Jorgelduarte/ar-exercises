require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

# Add some data into employees. Here's an example of one (note how it differs from how you create stores):

@store1.employees.create(first_name: "Khurram",last_name: "Virani", hourly_rate: 60)

# Go ahead and create some more employees using the create method. You can do this by making multiple calls to create
# (like you have before.) No need to assign the employees to variables though. Create them through the @store# instance 
# variables that you defined in previous exercises. Create a bunch under @store1 (Burnaby) and @store2 (Richmond). 
# Eg: @store1.employees.create(...).

@store1.employees.create(first_name: "Jorge",last_name: "Duarte", hourly_rate: 40)
@store1.employees.create(first_name: "Giselle",last_name: "Barros", hourly_rate: 30)
@store2.employees.create(first_name: "Don",last_name: "DonDon", hourly_rate: 35)
@store2.employees.create(first_name: "Tina",last_name: "Lee", hourly_rate: 50)
@store2.employees.create(first_name: "Kevin",last_name: "Lee", hourly_rate: 70)