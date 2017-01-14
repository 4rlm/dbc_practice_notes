#=============
# Introduction to Iteration
# Video 1: The Building Blocks of Iteration
# Iteration: Executing a block of code on each item of an array or hash.
#=============

# Array Example
=begin
animal_array = [ 'dog', 'cat', 'fish', 'zebra']
animal_array.each do |animal|
    puts "There is one #{animal}."
end

# Hash Example
animal_hash = {
    'dog' => 'run',
    'monkey' => 'climb',
    'fish' => 'swim',
    'bird' => 'fly'
}

animal_hash.each do |animal, ability|
    puts "The #{animal} can #{ability}."
end

=end

#=============
# Release 0: Explore Blocks
#=============

# Use the .times Method

# 1. //     .times
# 3.times { |x| puts "I'm printing something from a block, and x is #{x}!" }

# 2. //     .times
# 6.times { |block_count| puts "This block has already run #{block_count} times." }

# 3. //     .each
# ["a","b","c","d"].each { |item| puts "Now the block parameter has a value of the current array item: #{item}" }

# 4. //     .times
# 2.times { puts "This block works just fine even without a parameter." }

# 5. //     .times vs while loop
# letters = ["a", "b", "c"]
# letters_count = letters.length
# letters_count.times { |i| puts letters[i] }

# VS (above and below are similar, but top is shorter.)
# letters = ["a", "b", "c"]
# letters_count = letters.length
#
# i = 0
# while i < letters_count
#   puts letters[i]
#   i += 1
# end

# 6. //     Experiments

# fib_array = [0,1,1,2,3,5]
#
# 100.times do |i|
#     fib_array << fib_array[-1] + fib_array[-2]
#     p fib_array[i]
# end

=begin
def fib(num)
    array = [0,1,1,2,3,5]
    num.times do |i|
        array << array[-1] + array[-2]
        p array[i]
    end
end

fib(100)
=end


# Video 2: Method That Takes a Block

=begin
def say_hello
    puts "Why, hello there!"
    3.times {yield}
end

say_hello { puts "Great to see you!" }
=end

=begin
def say_hello
    name1 = "Bob"
    name2 = "Sarah"
    puts "Why, hello there!"
    yield(name1, name2)
end

say_hello {|name1, name2| puts "Great to meet you, #{name1} and #{name2}!"}

=end

# MY VERSION
=begin
def travel_time
    location1 = "home"
    location2 = "work"
    minutes = 25
    puts "Please enter your starting and ending points."
    yield(location1, location2, minutes)
end

travel_time {|location1, location2, minutes |puts "Current travel time from #{location1} to #{location2} is #{minutes} minutes."}
=end

#=============
# Release 1: Use each, map, and map!
# Video 3: .each on array and hash
#=============
=begin
letters = ['a', 'b', 'c', 'd', 'e']
new_letters = []

puts "Original data:"
p letters
p new_letters

# iterate through the array with .each
# !! .each does not modify contents in array.
letters.each do |letter|
    new_letters << letter.next
end

puts "After .each call:"
p letters
p new_letters

###################

numbers = {1 => 'one', 2 => 'two', 3 => 'three'}

# iterate through the array with .each
numbers.each do |digit, word|
    puts "#{digit} is spelled out as a #{word}."
end

=end
#=============
# Video 4: .map on array and hash
# .map will change the value to what the the last line in block evaluates to.
# Use dangerous version .map! (bang) to make changes permanent.
#=============
=begin
letters = ['a', 'b', 'c', 'd', 'e']
puts "Original data:"
p letters

# iterate through the array with .map
# Version 1: create new array w/ .map
# modified_letters = letters.map do |letter|
#     letter.next
# end
#
# puts "After .map call:"
# p letters
# p modified_letters

###################
# Version 2: edit array in place w/ .map!
letters.map! do |letter|
    letter.next
end

puts "After .map call:"
p letters
=end

#=============
# Release 2: Use the Documentation
# .collect
#=============

puts "\n##### Arrays ######\n"
##########################
puts "\n== Array: Method 1 - array_delete_less_than  ==\n"

def array_delete_less_than(input)
    numbers = [1,2,3,4,5,6,7,8,9,10]
    puts "Original: #{numbers}"

    numbers.collect do |num|
        numbers.delete_if {|x| x < 5 }
    end
    puts "Modified: #{numbers}"
end

array_delete_less_than(5)

##########################
puts "\n== Array: Method 2 - array_filter_input  ==\n"

def array_filter_input(input)
    numbers = [1,2,3,4,5,6,7,8,9,10]
    puts "Original: #{numbers}"

    numbers.collect do |num|
        numbers.delete_if {|x| x != 5 }
    end
    puts "Modified: #{numbers}"
end

array_filter_input(5)

###################
puts "\n== Array: Method 3 - array_filter_evens  ==\n"

def array_filter_evens
    numbers = [1,2,3,4,5,6,7,8,9,10]
    puts "Original: #{numbers}"

    numbers.collect do |num|
        numbers.delete_if {|x| x.odd? }
    end
    puts "Modified: #{numbers}"
end

array_filter_evens

###################
puts "\n== Array: Method 4 - array_loop_till_false  ==\n"

def array_loop_till_false(input)
    pronouns = ['I', 'He', 'You', 'They', 'Their', 'Theirs' ]
    puts "Original: #{pronouns}"

    pronouns.collect do |num|
        pronouns.delete_if {|x| x.length != input }
    end
    puts "Modified: #{pronouns}"
end

array_loop_till_false(2)





puts "\n##### HASHES ######\n"
######### HASHES ##########

puts "\n== Hash: Method 1 - delete_less_than  ==\n"

def hash_delete_less_than(input)
    numbers = {
        1 => 'one',
        2 => 'two',
        3 => 'three',
        4 => "four",
        5 => "five",
        6 => "six",
        7 => "seven",
        8 => "eight"
    }

    puts "Original: #{numbers}"

    numbers.collect do |num|
        numbers.delete_if {|x| x < 5 }
    end
    puts "Modified: #{numbers}"
end

hash_delete_less_than(5)

###########################
puts "\n== Hash: Method 2 - filter_input  ==\n"

def hash_filter_input(input)
    numbers = {
        1 => 'one',
        2 => 'two',
        3 => 'three',
        4 => "four",
        5 => "five",
        6 => "six",
        7 => "seven",
        8 => "eight"
    }

    puts "Original: #{numbers}"

    numbers.collect do |num|
        numbers.delete_if {|x| x != 5 }
    end
    puts "Modified: #{numbers}"
end

hash_filter_input(5)

###################
puts "\n== Hash: Method 3 - hash_filter_evens  ==\n"

def hash_filter_evens
    numbers = {
        1 => 'one',
        2 => 'two',
        3 => 'three',
        4 => "four",
        5 => "five",
        6 => "six",
        7 => "seven",
        8 => "eight"
    }

    puts "Original: #{numbers}"

    numbers.collect do |num|
        numbers.delete_if {|x| x.odd? }
    end
    puts "Modified: #{numbers}"
end

hash_filter_evens

###################
