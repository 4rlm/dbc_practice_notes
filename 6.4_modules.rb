# 6.4 Modules || ruby/shout.rb

# Syntax to Create:
# module Shout
#     def new_method()
#         sample action
#     end
# end

# Syntax to call:
# require_relative 'shout'
# SomeModule.some_method
# ex: ' Shout.yelling_happily("Whahoo")

## WHEN TO USE A MODULE: 2 REASONS: ##
=begin
1) Modules provide compartmentalization for methods, so instead of calling some_method, you would call SomeModule.some_method -- similar to how you might organize files into folders in order to group them. This compartmentalization prevents clutter, and decreases the likelihood that one programmer might accidentally overwrite the method of another programmer.

2) Modules can be written as mixins, meaning they can be "mixed in" to classes to give classes more functionality. Think of mixins as a sort of extension pack or toolbelt that can be used by several different classes. For example, both a Parrot class and a Leprechaun class might use the same Speech module for basic speech functionality, even if those two classes have little else in common.
=end
############################

#########
## Release 0: Practice Using Modules ##
#########

=begin
# 1) SecureRandom (must: require)
require 'SecureRandom'
puts "SecureRandom.class: #{SecureRandom.class}"
puts "SecureRandom.uuid: #{SecureRandom.uuid}"
puts "SecureRandom.base64: #{SecureRandom.base64}"
puts "SecureRandom.urlsafe_base64: #{SecureRandom.urlsafe_base64}"
puts "SecureRandom.hex: #{SecureRandom.hex}"
puts "SecureRandom.random_bytes: #{SecureRandom.random_bytes}"
puts "SecureRandom.random_number(100): #{SecureRandom.random_number(100)}"
puts "SecureRandom.random_number: #{SecureRandom.random_number}"
puts "SecureRandom.gen_random(20): #{SecureRandom.gen_random(20)}"
puts "------------------------"

# 1) Math (preloaded)
puts "Math.sqrt(4): #{Math.sqrt(4)}"
puts "------------------------"

# ' ModuleName.method_name ' to find out methods of module.
puts "Math.singleton_methods: #{Math.singleton_methods}"
puts "SecureRandom.singleton_methods: #{SecureRandom.singleton_methods}"
puts "------------------------"

=end
############################

#########
## Release 1: Write a Simple Module ##
#########

=begin
# 1. Declare your module. The syntax for declaring a module is pretty simple:
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
     words + "!!!" + " :)"
  end
end

# 2. In your terminal, run IRB from the directory that contains shout.rb. We can use require_relative to load our new module:
require_relative 'shout'

p Shout.singleton_methods
p Shout.yell_angrily("Darn it")
p Shout.yelling_happily("Whahoo")

=end
############################


#########
## Release 2: Mix in a Module ##
#########

## MODULE DECLARATION ##
=begin

module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end

## CLASS DECLARATIONS ##
class Bird
    include Flight
end

class Plane
    include Flight
end

## DRIVER CODE ##
bird = Bird.new
puts bird.take_off(800)

plane = Plane.new
puts plane.take_off(30000)

=end
############################


#########
## Release 3: Convert a Standalone Module to a Mixin ##
#########


## MODULE DECLARATION ##
module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
     words + "!!!" + " :)"
  end
end

## CLASS DECLARATIONS ##
class Workers
    include Shout
end

class SportsFans
    include Shout
end


## DRIVER CODE ##
worker = Workers.new
angry_worker = worker.yell_angrily("The Nightshift")
happy_worker = worker.yelling_happily("Christmas Bonuses")

sports_fan = SportsFans.new
angry_sports_fan = sports_fan.yell_angrily("That's a Foul")
happy_sports_fan = sports_fan.yelling_happily("He Scored")

puts "An angry worker shouts, '#{angry_worker}'"
puts "A happy worker shouts, '#{happy_worker}'"
puts "An angry sports fan shouts, '#{angry_sports_fan}'"
puts "A happy sports fan shouts, '#{happy_sports_fan}'"

############################
