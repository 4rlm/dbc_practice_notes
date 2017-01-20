## 6.3 Attributes ##

# The state, or attributes.

# Releases 0-4 #
#############################
class Santa
    def initialize(gender, ethnicity)
        @gender = gender
        @ethnicity = ethnicity
        @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
        @age = 0
        puts "Initializing Santa instance ..."
    end

    # Instance Method 1 #
    def speak
        puts "I'm #{@gender} #{@ethnicity} Santa."
        puts "Ho, ho, ho! Haaaappy holidays!"
    end

    # Instance Method 2 #
    def eat_milk_and_cookies(cookie)
        puts "That was a good #{cookie}!"
    end

    ## Setter Method for Attributes ##
    def celebrate_birthday
        @age += 1
    end

    ## Setter Method for Attributes ##
    def get_mad_at(reindeer_name)
        @reindeer_ranking.delete(reindeer_name)
        @reindeer_ranking << reindeer_name
    end

    ## Setter Method for Attributes ##
    def gender=(user_input)
        @gender = user_input
    end

    ## Getter Method for Attributes ##
    def age
        @age
    end

    ## Getter Method for Attributes ##
    def ethnicity
        @ethnicity
    end

    ## Getter Method for Attributes ##
    def gender
        @gender
    end
end


###########
## (1) DRIVER CODE: Simple ##
=begin
santa1 = Santa.new("female", "Asian")
puts santa1.speak
puts santa1.eat_milk_and_cookies("chocolate chip cookie")
=end
##########

##########
# (2) DRIVER CODE: Medium ##
=begin
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

santas.each do |santa|
    puts santa.speak
    puts santa.eat_milk_and_cookies('chocolate chip cookies')
end
=end
###########

###########
# (3) DRIVER CODE: Advanced ##
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

santas.each do |santa|
    puts "Before: I'm a #{santa.age} year old #{santa.ethnicity} #{santa.gender} santa."
    puts "--------------------------"
    santa.speak
    santa.eat_milk_and_cookies("chocolate chip cookie")
    santa.celebrate_birthday
    santa.gender = 'male'
    santa.get_mad_at('Dasher')
    santa.ethnicity
    puts "--------------------------"
    puts "After: Now, I'm a #{santa.age} year old #{santa.ethnicity} #{santa.gender} santa."
    puts "--------------------------"
    puts
end

#############################



#############################
## VIDEO EXAMPLES W/ REINDEER ##
#############################


##############
## VIDEO 1: Reindeer
##############

# Our reindeer needs state:
# name
# location

=begin
class Reindeer
    def initialize(name)
        # Attributes inside Instance Variable (has @) #
        # Scope is available anywhere in class - not just inside method.
        @name = name
        @location = "the North Pole"
    end

    # Instance Method 1 #
    def take_off(altitude)
        puts "#{@name} took off."
        puts "#{@name} ascended to #{altitude} feet."
    end

    # Instance Method 2 #
    def land(location)
        puts "Landed safely in #{location}."
        @location = location
    end

    def about
        puts "Name: #{@name}"
        puts "Location: #{@location}"
    end
end
puts "-----------------------"
reindeer = Reindeer.new("Blitzen")
reindeer.about
reindeer.take_off(3000)
reindeer.land("Bombay")
reindeer.about

puts "-----------------------"
reindeer = Reindeer.new("Rudolph")
reindeer.about
reindeer.take_off(10000)
reindeer.land("Paris")
reindeer.about
=end
#############################


##############
## VIDEO 2-3: Reindeer
##############

# Need to make interface to make data available to outside of class.
# getter methods = wrap around method to make data accessible from outside.
# setter methods = make data writable from outside.

=begin
class Reindeer
    def initialize(name)
        @name = name
        @location = "the North Pole"
    end

    def take_off(altitude)
        puts "#{@name} took off."
        puts "#{@name} ascended to #{altitude} feet."
    end

    def land(location)
        puts "Landed safely in #{location}."
        @location = location
    end

    ## Getter Method for Attributes ##
    def name
        @name
    end

    ## Getter Method for Attributes ##
    def location
        @location
    end

    ## Setter Method for Attributes ##
    def name=(new_name)
        @name = new_name
    end
end

reindeer = Reindeer.new("Dasher")
puts "#{reindeer.name} is in #{reindeer.location}."
reindeer.take_off(3000)
reindeer.land("Cape Town")
reindeer.name = "The reindeer Formerly Known as Dasher."
puts "#{reindeer.name} is in #{reindeer.location}."
=end

#############################






#############################
## IMPORTANT!!!!!
#############################
#We're making an empty array, and then adding a lot of Santa instances to it. (If we wanted to interact with the Santas, we would need to loop through the array and call methods on each one. If you're not sure how this works, here's some sample code (Links to an external site.) to play with.)

=begin
class Puppy
    def initialize(name)
        @name = name
    end

    def bark
        puts "#{@name} says: Woof!"
    end
end

names = ["Fido", "Spot", "Dutchess", "Ginger"]
puppies = []

puts "Iterating through names list to create puppies..."
names.each do |name|
    puts "Creating a puppy named #{name}..."
    puppies << Puppy.new(name)
    puts "There are now #{puppies.length} Puppy instances in the array."
    puts "-----"
end

puts "Testing each Puppy instance in the array to make sure it can bark..."
puppies.each do |puppy|
    puppy.bark
end
=end
#############################
