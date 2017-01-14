#==================================
# Basics: Operators / Built-in Methods
#==================================

#------------------
# Frequent Tips:
#------------------
# line spacing: "\n"


#------------------
# built-in methods
#------------------
# .capitalize
# .chop()
# .class
# .downcase
# .even?
# .gsub!(/s/, "th")
# .include? "s"
# .integer?
# .length
# .odd?
# .rand()
# .reverse
# .round
# .size
# .split()
# .string?
# .to_a
# .to_int
# .to_s
# .upcase
# .sort_by {|a, b| b }
# .is_a? Integer

#======

#------------------
# operators / boolean
#------------------
# 10 > 8
# 8 > 10
# 8 == 10
# 8 != 10
# !true
# !false
# ( 1 == 1 ) && ( 2 == 2 )
# ( 1 == 2 ) || ( 2 == 2 )
# !( false )
# (x && (y || w)) && z)
# test_1 = 2 > 3 && 5 > 4
# test_2 = 5*2 == 8 || 100 / 10 == 9
# test_3 = 56 + 4 == 30 + 30
#======


#==================================
# Conditionals: if/elsif/else  / case/switch
#==================================

#------------------
# if/elsif/else
#------------------
# score = 95
# a = 90
# b = 80
# c = 70
#
# if score >= 90
#     puts "You got an A!"
# elsif score >= 80
#     puts "You got a B."
# elsif score >= 70
#     puts "You got a C"
# else
#     puts "You need to study harder!"
# end
#======


#==================================
# Loops / .each / iterations
#==================================

#------------------
# while loop
#------------------
# i=0
# while i < 10
#     puts i
#     i+=1
# end
#======

#------------------
# until loop
#------------------
# i = 0
# until i == 10
#     puts i
#     i+=1
# end
#======

#------------------
# for loop
#------------------
# i = 0
# for i in 0..10
#     puts i
#     i+=1
# end
#======

#------------------
# loop method
#------------------
# i = 20
# loop do
#     i -= 1
#     print i
#     break if i == 0
# end
#======

#------------------
# next
#------------------
# i = 10
# loop do
#   i -= 1
#   next if i.odd?
#   puts i
#   break if i == 0
# end
#======

#------------------
# each
#------------------
# array = 1..10
# array.each do |x|
#     puts x
# end
#======

#------------------
# times
#------------------
# 5.times do
#     puts "This is so fun!!!"
# end
#======


#==================================
# ARRAYS
#==================================

#------------------
# arrays: accessing by index
#------------------
# num_array = [100, 200, 300, 400, 500]
# string_array = ["Florida", "California", "Arizona", "Washington"]
#
# print  num_array[2]
# print string_array[2]
#======

#------------------
# arrays: multidimensional arrays
#------------------
# multi_d_array = [[1,2,3,4],[5,6,7,8],[0,2,4,6],[1,2,3,4]]
#
# #Version 1 Below:
# multi_d_array.each do |x|
#     print "#{x}\n"
# end
#
# #Version 2 Below:
# multi_d_array.each { |x| puts "#{x}\n" }
#======

#==================================
# Hashes
#==================================

#------------------
#key-value pairs
#------------------
# my_hash = {
#     "name" => "Eric",
#     "age" => 26,
#     "hungry?" => true
# }
#
# puts my_hash["name"]
# puts my_hash["age"]
# puts my_hash["hungry?"]
#======

#------------------
# Adding and Accessing a hash
#------------------
# pets = {
#   "Stevie" => "cat",
#   "Bowser" => "hamster",
#   "Kevin Sorbo" => "fish"
# }
# puts pets["Stevie"]
#
# pets = Hash.new
# pets["quincy"] = "dog"
#
# puts pets["quincy"]
#======

#------------------
# Iterating over Arrays
#------------------
# numbers = [1,2,3,4,5]
# numbers.each{|n| puts n }
#======

#------------------
# Iterating Over Multidimensional Arrays
#------------------
# s= [["ham","turkey"],["swiss", "american"],["salad", "soup"]]
# s.each {|el|
#     el.each{|item|
#         puts item
#     }
# }
#======

#------------------
# Iterating Over Hashes
#------------------
# cities = {
#     "chicago" => "cold",
#     "new york" => "big",
#     "san diego" => "pretty",
#     "miami" => "hot",
#     "austin" => "conservative",
#     "san francisco" => "liberal"
# }
# cities.each{|k,v| puts "#{k}: #{v}"}
#======

#------------------
# Iterating over Arrays & Hashes
#------------------
# friends = ["tom", "steve", "bill"]
# family = {
#     "sarah" => "sister",
#     "melissa" => "mom",
#     "gahee" => "wife"
# }
#
# friends.each{|x| puts x}
# family.each{|x,y| puts "#{x}: #{y}"}
#======

#------------------
# Complex Methods
#------------------
# def array_of_10
#   puts (1..10).to_a
# end
#
# array_of_10
#======

#------------------
# Complex Methods
#------------------
# def add(n1,n2)
#     return n1+n2
# end
#
# output = add(10,15)
# puts output
#======

#------------------
# Combined Comparison Operator
# 0: 1st == 2nd
# 1: 1st > 2nd
# -1: 1st < 2nd
#------------------
# book_1 = "A Wrinkle in Time"
# book_2 = "A Brief History of Time"
# p book_1 <=> book_2
#------
# fruits = ["orange", "apple", "banana", "pear", "grapes"]
# fruits.sort! do |fruit1, fruit2|
#     p fruit2 <=> fruit1
# end
#======

#==================================
# EXERCISES AND EXAMPLES
#==================================

#------------------
# Exercise 1:
#------------------
# print "What's your first name?"
# first_name = gets.chomp
# first_name.capitalize!
#
# print "What's your last name?"
# last_name = gets.chomp
# last_name.capitalize!
#
# print "What city are you from?"
# city = gets.chomp
# city.capitalize!
#
# print "What state or province are you from?"
# state = gets.chomp
# state.upcase!
#
# puts "Your name is #{first_name} #{last_name} and you're from #{city}, #{state}!"
#======

#------------------
# Exercise 2:
#------------------
# print "Integer please: "
# user_num = Integer(gets.chomp)
#
# if user_num < 0
#     puts "You picked a negative number!"
#
# elsif user_num > 0
# puts "You picked a positive integer!"
#
# else
#     puts "You picked zero!"
# end
#======

#------------------
# Exercise 3:
#------------------
# age = 23
#
# if age < 18
#     print "Sorry, you are too young."
# elsif age > 18
#     print "Welcome to the site!"
# else
#     print "Please tell us your age."
# end
#======

#------------------
# Exercise 4:
#------------------
# a = 20
# b = 20
#
# if a < b
#     print "#{a} is less than #{b}."
# elsif a > b
#     print "#{a} is less than #{b}."
# else
#     print "#{a} is equal to #{b}."
# end
#======

#------------------
# Exercise 5:
#------------------
# cherries = false
#
# print "We have strawberries!" unless cherries
#======

#------------------
# Exercise 6: Thtring, pleathe!
# Focus: .gsub!(/s/, "th") / .downcase / gets.chomp
#------------------
# print "Thtring, pleathe!: "
# user_input = gets.chomp
# user_input.downcase!
#
# if user_input.include? "s"
#   user_input.gsub!(/s/, "th")
# else
#   puts "Nothing to do here!"
# end
#
# puts "Your string is: #{user_input}"
#======

#------------------
# Exercise 7: Redacted
# Focus: .each / gets.chomp / array
#------------------
# puts "Text to search through: "
# text = gets.chomp
# puts "Word to redact: "
# redact = gets.chomp
#
# words = text.split(" ")
#
# words.each do |word|
#   if word != redact
#     print word + " "
#   else
#     print "REDACTED "
#   end
# end
#======

#------------------
# Exercise 8: Arrays & Hashes
#------------------
# puts "Enter 2-3 Sentences:"
# text = gets.chomp
# words = text.split(" ")
# freq = Hash.new(0)
# words.each{|w| freq[w] +=1}
#
# freq = freq.sort_by {|k, v| v}
# freq.reverse!
# freq.each{|k, v| p "#{k}: #{v}"}
#======

#------------------
# Exercise 8: Methods, Blocks, and Sorting
#------------------
# def prime(n)
#   puts "That's not an integer." unless n.is_a? Integer
#   is_prime = true
#   for i in 2..n-1
#     if n % i == 0
#       is_prime = false
#     end
#   end
#
#   if is_prime
#     puts "#{n} is prime!"
#   else
#     puts "#{n} is not prime."
#   end
# end
#
# prime(2)
# prime(9)
# prime(11)
# prime(51)
# prime(97)
#======

#------------------
# Exercise 9: Splat!
#------------------
# def what_up(greeting, *bros)
#   bros.each { |bro| puts "#{greeting}, #{bro}!" }
# end
#
# what_up("What up", "Justin", "Ben", "Kevin Sorbo")
#======

#------------------
# Exercise 10: Method that capitalizes a word.
#------------------
# Option 1 - As Method:
# def cap(s)
#     puts "#{s[0].upcase}#{s[1..-1]}"
# end
#
# cap("ryan")
# cap("jane")
#
# # Option 2 - From Array:
# names = ["ryan", "jane"]
# names.each{|s| puts "#{s[0].upcase}#{s[1..-1]}"}
#======

#------------------
# Exercise 11: Methodical Sorting
#------------------
def alphabetize(arr, rev=false)
  if rev
    arr.sort { |item1, item2| item2 <=> item1 }
  else
    arr.sort { |item1, item2| item1 <=> item2 }
  end
end

books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]

puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}"
#======

#------------------
# Exercise :
#------------------

#======

#------------------
# Exercise :
#------------------

#======

#------------------
# Exercise :
#------------------

#======

#------------------
# Exercise :
#------------------

#======
