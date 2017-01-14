divider = "\n------------------------\n"
#=============
# Release 0: Explore Blocks
#=============
def fib(num)
    array = [0,1,1,2,3,5]
    num.times do |i|
        array << array[-1] + array[-2]
        p array[i]
    end
end

fib(100)

puts divider

#=============
# Release 1: Use each, map, and map!
#=============
animals_array = ['cat', 'dog', 'fish', 'bird', 'bear', 'rabbit']
animals_hash = {
    1 => 'cat',
    2 => 'dog',
    3 => 'fish',
    4 => 'bird',
    5 => 'bear',
    6 => 'rabbit'
}

animals_array.each {|animal| puts animal.upcase}
puts divider
animals_hash.each {|key,value| puts value.capitalize}

puts divider

#=============
# Release 2: Use the Documentation
# .collect
#=============
def numbers_method
    num_array = [1,2,3,4,5,6,7,8,9,10]

    num_hash = {
        1 => 'one',
        2 => 'two',
        3 => 'three',
        4 => "four",
        5 => "five",
        6 => "six",
        7 => "seven",
        8 => "eight"
    }

    puts "Original: #{num_array}"
    puts "Modified: #{yield num_array}"
    puts "------------------------"
end

###### ARRAY METHODS ##########
puts divider + "Array-1 Method: Delete num less than 5."
numbers_method { |num_array| num_array.delete_if {|num| num < 5} }

puts divider + "Array-2 Method: Delete num less or greater than 5."
numbers_method { |num_array| num_array.keep_if {|num| num == 5 }}

puts divider + "Array-3 Method: Filter evens"
numbers_method { |num_array| num_array.delete_if {|num| num.odd? }}

puts divider + "Array-4 Method: Loop till false"
numbers_method { |num_array| num_array.delete_if {|num| num > 5 }}
####################


###### HASH METHODS ##########
puts divider + "Hash-1 Method: Delete num less than 5."
numbers_method { |num_hash| num_hash.delete_if {|key, value| key < 5} }

puts divider + "Hash-2 Method: Delete num less or greater than 5."
numbers_method { |num_hash| num_hash.keep_if {|key, value| key == 5 }}

puts divider + "Hash-3 Method: Filter evens"
numbers_method { |num_hash| num_hash.delete_if {|key, value| key.odd? }}

puts divider + "Hash-4 Method: Loop till false"
numbers_method { |num_hash| num_hash.delete_if {|key, value| key > 5 }}
####################
