## 6.1 Introduction to Classes ##

## IMPORTANT NOTES: ##
=begin
* classes: include instructions for both attributes (characteristics) and methods (behavior).
* instance of the class: each member of a class.
* First defined a class, then make as many instances of it as you'd like.

* class methods: Methods called on a class.
* instance methods: Methods called on an instance .

* You've been using instance methods quite often already ­­ anytime you call a method on a particular string, or array, or integer, you are calling an instance method. You haven't called many class methods, but you certainly could.

** class methods vs instance methods:
*  A class and an instance of a class are two completely separate objects. You wouldn't call .new on an instance of a string, and you wouldn't call .length on the String class itself.
=end

## Release 0: Design a Class ##
=begin
SPECIES:
Canis Lupus Familiaris

CHARACTERISTICS:
Common Term: Dog
Height: usually 1 to 2 lbs
Weight: usually 10 to 40 lbs
Friendly: usually
Eye count: 2
Name: varies
Color: varies
Diet: Omnivor

BEHAVIOR:
Walk
Run
Swim
Play
Bark
Protect
=end

############################

## Release 1: Declare Your Class and Create an Instance in IRB ##
=begin
class Puppy
end

duchess = Puppy.new
fido = Puppy.new
spot = Puppy.new
=end

# Check Methods and Classes #
# puts Puppy.methods
# puts Puppy.class

# puts spot.class # => Class
# puts  duchess == fido # => Puppy
# puts fido.instance_of?(Array) # => false
# puts fido.instance_of?(Puppy) # => true
# puts spot.play_dead # => undefined method `play_dead' for #<Puppy:0x007ff047903230> (NoMethodError)

############################

## Release 2: Practice Using Class Methods and Instance Methods ##
# Run this code in IRB to create a new string using a class method:
=begin
class String
end

puts str = String.new

puts str.length
puts str.empty?
puts  str += "huh."

# In the past, we have often made new instances of the String class by declaring them literally:
puts  str = "some string"

# ... but String.new will work too, and even takes an argument for what characters you would like to put in the string. Try it:
puts greeting = String.new("hello")
puts greeting.length
puts greeting.upcase
=end
