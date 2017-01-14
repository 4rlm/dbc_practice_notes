# =========================
# Assignment 1: Variables are Vary Interesting
# 1. Why are variables in Ruby useful?   Answer with a comment.
Because they can store values which can be reused.  Saving time and code.

# 2. Give an example of a string, a boolean, and an integer.
puts string = "This is a string."
puts boolean = "Is this a string?"
integer = 4
puts integer_string = "#{integer} is an integer."

# 3. Assign the value of 9 to weeks_at_dbc.
weeks_at_dbc = 9

# 4. Print your weeks_at_dbc variable.
puts "weeks_at_dbc = #{weeks_at_dbc}"

# 5. Ask the user what their hometown is.
htown_q = "What's your hometown?"
puts htown_q
htown_a = gets.chomp

# 6. Use interpolation to say their answer in a sentence.
htown_response = "Wow!  I heard #{htown_a} is a very wonderful place."
puts htown_response

# 7. Ask the user what their favorite city is.
favcity_q = "What's your favorite city?"
puts favcity_q
favcity_a = gets.chomp

# 8. Add their hometown and their favorite city together to make one CRAZY city.
crazy_city = htown_a + favcity_a
crazy_city_response = "Oh!  My friend lives in #{crazy_city}."
puts crazy_city_response

# 9. Print the result of 8 multiplied by 10.
puts 8 * 10

# 10. Declare a variable for your first name and your last name. Combine them and store the the result in a full_name variable.  Debug full_name by printing it.
fname = "adam".capitalize!
lname = "booth".capitalize!
full_name = "#{fname} #{lname}"
puts full_name

# =========================


# =========================
# Assignment 2: Global Greetings:  Ask the user how they would like to be greeted.  If they say "in French", respond with "Bonjour!" If they say "in Spanish", respond with "Hola!" If they say "in Afrikaans", respond with "Hallo!" Handle all other input with "Uh, hi?"

fr = "french"
sp = "spanish"
af = "afrikaans"

fr_gr = "Bonjour!"
sp_gr = "Hola"
af_gr = "Hallo!"
other_gr = "Uh, hi?"
question = "In what language would you like to be greeted?"
answer = ""

puts question
answer = gets.chomp

if answer == fr
    puts fr_gr
elsif answer == sp
    puts sp_gr
elsif answer == af
    puts af_gr
else
    puts other_gr
end

# =========================
# Assignment 3: The Mega-Complimentizer - Ask the user if they're in a good mood.  If they aren't, keep telling them that they're fabulous, and then asking again if they're in a good mood.  When the user finally answers "y", say "I knew I could cheer you up!"

correct_ans = "y"
answer = ""
question = "Are you happy today?"

puts question
answer = gets.chomp

if answer == correct_ans
	puts "That's fantastic to hear!"
else

	while answer != correct_ans
		puts question
		answer = gets.chomp
	end

	puts "I knew we could cheer you up today!"
end

# =========================

# Assignment 4: A Method Ends the Madness
# 1. Write a method that multiplies two numbers, then adds a third number

def mult_then_add(n_1, n_2, n_3)
	n_1 * n_2 + n_3
end
puts mult_then_add(1, 3, 4)

# 2. Write a method that reverses a string ONLY if it's shorter than 4 letters. Otherwise, the string is returned as-is. Hint: strings have a built-in .length method!)

def string_magic(word)
	unless word.length > 3
		puts word.reverse
	else
		puts word
	end
end

puts string_magic("cat")

# 3. What does the built-in .chop method on a string do? What are some ways to find out?
p "example".chop[3,5]

It Chops the string at the desired index place.  Can find this out by looking at the official docs for Strings built-in methods on left column or can simply test it out by adding it to a string and puts.

# =========================

# Try It Yourself: Mock interview
# 1. Write a method that adds two strings together.

fname = "adam"
lname = "booth"
domain = "smiletech.com"

def string_adder(st_1, st_2, st_3)
    "#{st_1[0]}#{st_2}@#{st_3}"
end

puts string_adder(fname, lname, domain)

#=> abooth@smiletech.com

#========

# 2. Count up to 20, printing each number and whether it is even or odd.

i = 0
while i < 21
    if i.even?
        puts "#{i} is even."
    elsif i.odd?
        puts "#{i} is odd."
    end
    i+=1
end

#========

# 3. Write a method that asks the user for their age, then says their age ain't nothing but a number.
# example: User enters "46"
# output: "46 ain't nothing but a number!"

# Version 1: Basic
puts "How old are you?"
age = gets.chomp
puts "#{age} ain't nothing but a number!"

# Version 2: Movie List
puts "How old are you?"
age = gets.chomp.to_i

if age < 13
    puts "Please select a movie from the following G Rated movie list."
elsif age < 18
    puts "Please select a movie from the following G & PG Rated movie list."
else
    puts "Please select a movie from the following movie list."
end

# =========================

# Bonus 1: Hello Method
name = "Adam"

def hello(name)
    "hello #{name}"
end
puts hello(name)

# =========================

# Bonus 2: Number Detector
def num_detector(n)
    i = 1
    while i < n
        if i.even?
            puts "#{i} is even!"
        end
        i+=1
    end
end

num_detector(20)
num_detector(10)

# =========================
# Bonus 3: Randomizer
def option_randomizer(opt_1, opt_2, opt_3)
    rand_num = rand(3)

    if rand_num == 0
        puts opt_1
    elsif rand_num == 1
        puts opt_2
    elsif rand_num == 2
        puts opt_3
    end
end

first = "I'm first."
second = "I'm second."
third = "I'm third."

times = 10
until times == 0
    puts option_randomizer(first, second, third)
    times -=1
end

# =========================
# Bonus 4: Backwards string
def backwards(word)
    word = word.reverse
    word = word.upcase
    word = word + "!!!"
end

puts backwards("adam")

# =========================
# Bonus 5: Reverse only long words.
def string_magic(word)
    if word.length <= 3
        puts word.reverse
    elsif word.length >= 4 && word.length < 6
        puts word.upcase
    else
        puts "#{word} is too long!"
    end
end

string_magic("catat")

# =========================
