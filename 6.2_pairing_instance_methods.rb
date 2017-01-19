## 6.2 Mandatory Pairing: Instance Methods ##

# Release 0: Add Behavior to a Class #
=begin
class Puppy

    # Add a method to your Puppy class named initialize. It should print "Initializing new puppy instance ..." (R1.1) #
    # Without changing your driver code, run the program. Does initialize run? When? (R1.2) #
    def initialize
        print "Initializing new puppy instance ..."
    end

    # Instance Method
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  # Instance Method # speak method that takes an integer and prints "Woof!" that many times.(R0.2) #
  def speak(num)
      num.times do
          print "Woof!"
      end
  end

  # Instance Method # roll_over method that just prints "*rolls over*". (R0.3) #
  def roll_over
      print "*rolls over*"
  end

  # Instance Method # dog_years method that takes an integer (of human years) and converts that number to dog years, returning a new integer. (R0.4) #
  def dog_years(human_years)
      dog_years = human_years * 7
      print "#{human_years} human years * 7 dog years = #{dog_years} dog years."
  end

  # Instance Method # one more trick -- whichever one you'd like. (R0.5) #
  def sit
      print "*sits*"
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

# Release 2: Write Your Own Class, and Experiment! #
=begin
instance_hash = {}
class Gymnast
    def flip
        return "flips"
    end

    def jump
        return "jumps"
    end
end

50.times do |instance|
    instance = Gymnast.new
    key = instance
    value = []
    value[0] = instance.flip
    value[1] = instance.jump
    instance_hash.store(key, value)
end

each_athlete = instance_hash.each do |k,v|
    puts "#{k} #{v[0]} and #{v[1]}"
end
=end
#####################
