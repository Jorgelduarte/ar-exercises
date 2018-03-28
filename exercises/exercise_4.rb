require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
# Borrowing and modifying the code from Exercise one, create 3 more stores:
# Surrey (annual_revenue of 224000, carries women's apparel only)
# Whistler (annual_revenue of 1900000 carries men's apparel only)
# Yaletown (annual_revenue of 430000 carries men's and women's apparel)

Store.create(name: 'Surrey', annual_revenue: 224000, womens_apparel: true, mens_apparel: false)
Store.create(name: 'Whistler', annual_revenue: 1900000, womens_apparel: false, mens_apparel: true)
Store.create(name: 'Yaletown', annual_revenue: 430000, womens_apparel: true, mens_apparel: true)


# Using the where class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable @mens_stores.

@mens_stores = Store.all.where(mens_apparel: true)

# Loop through each of these stores and output their name and annual revenue on each line.

@mens_stores.each {|store| puts "#{store.name} #{store.annual_revenue}"}

# Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.
@womens_stores = Store.all.where('annual_revenue < ? AND womens_apparel = true', 1_000_000)
@womens_stores.each {|store| puts "#{store.name} #{store.annual_revenue}"}