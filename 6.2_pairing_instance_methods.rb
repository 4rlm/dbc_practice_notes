## 6.2 Mandatory Pairing: Instance Methods ##

# Release 0: Add Behavior to a Class #

=begin
class Puppy

    # Add a method to your Puppy class named initialize. It should print "Initializing new puppy instance ..." (R1.1) #
    # Without changing your driver code, run the program. Does initialize run? When? (R1.2) #
    def initialize
        p "Initializing new puppy instance ..."
    end

    # Instance Method
  def fetch(toy)
    p "I brought back the #{toy}!"
    toy
  end

  # Instance Method # speak method that takes an integer and prints "Woof!" that many times.(R0.2) #
  def speak(num)
      num.times do
          p "Woof!"
      end
  end

  # Instance Method # roll_over method that just prints "*rolls over*". (R0.3) #
  def roll_over
      p "*rolls over*"
  end

  # Instance Method # dog_years method that takes an integer (of human years) and converts that number to dog years, returning a new integer. (R0.4) #
  def dog_years(human_years)
      dog_years = human_years * 7
      p "#{human_years} human years * 7 dog years = #{dog_years} dog years."
  end

  # Instance Method # one more trick -- whichever one you'd like. (R0.5) #
  def sit
      p "*sits*"
  end

end

# Update driver code to demonstrate methods work as expected. (R0.6) #
spot = Puppy.new # initializes an instance of Puppy. (R0.1) #
puts spot.fetch('ball') # instance can now fetch a ball. (R0.1) #
puts spot.speak(5) # instance can now "Woof" 5 times. (R0.2) #
puts spot.roll_over # instance can now "*rolls over*". (R0.3) #
puts spot.dog_years(10) # instance can now convert human years to dog years. (R0.4) #
puts spot.sit # instance can now "*sit*". (R0.5) #

=end
#####################

# Release 1: Declare an Initialize Method #
# Add a method to your Puppy class named initialize. It should print "Initializing new puppy instance ..." (R1.1) #
# Without changing your driver code, run the program. Does initialize run? When? == YES.  Beginning. (R1.2) #

#####################



####################
# Release 2: Write Your Own Class, and Experiment! #
#####################

class Athlete
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def flip
        "flips"
    end

    def jump
        "jumps"
    end

end

#### DRIVER CODE ####
names = []

50.times do |i|
    random_name = "Athlete#{i+=1}"
    names << random_name
end

athletes = []

names.each do |name|
    puts "Creating an athlete named #{name}..."
    athletes << Athlete.new(name)
    puts "There are now #{athletes.length} Athlete instances in the array."
    puts "------------------"
end

athletes.each do |athlete|
    puts "#{athlete.name} #{athlete.flip} & #{athlete.jump}"
    puts "------------------"
end

#####################
