# Symbol Hash vs String Hash
#=================
#PART 1: SYMBOL HASH (EMPTY)
# Step A1: Create Empty Hash:
sym_hash1 = {}

#Step A2: Symbol Hash: Add to Hash
sym_hash1[:a] = "apple"
sym_hash1[:b] = 'banana'
sym_hash1[:c] = 'carrot'
sym_hash1[:d] = 'dog'

#Step A3: Print Specific Hash Values Only
p sym_hash1[:b]
p sym_hash1[:d]

#Step A4: Print Specific Hash Values in String Interpolation:
puts "\n\nThere is a #{sym_hash1[:d]} eating a #{sym_hash1[:b]}.\n\n"

# Step A5: Iterate All Key/Values
sym_hash1.each {|k,v| puts "#{k} is key for #{v}"}

# Step A6: Iterate Keys Only
sym_hash1.each{|k,v| puts k}

# Step A7: Iterate Values Only
sym_hash1.each {|k,v| puts v}

# Step A8: Access all Keys or All Values
p sym_hash1.keys
p sym_hash1.values
p sym_hash1


######################
puts "\n\n#{"="*40}\n\n"
######################

#=================
#PART 2: SYMBOL HASH (FULL)
sym_hash2 = {
    name: "Adam",
    gender: "Male",
    pet: "No",
    food: "curry rice"
}

#Step B2: Symbol Hash: Add to Hash
sym_hash2[:a] = "apple"
sym_hash2[:b] = 'banana'
sym_hash2[:c] = 'carrot'
sym_hash2[:d] = 'dog'

#Step B3: Print Specific Hash Values Only
p sym_hash2[:b]
p sym_hash2[:d]

#Step B4: Print Specific Hash Values in String Interpolation:
puts "\n\nThere is a #{sym_hash2[:d]} eating a #{sym_hash2[:b]}.\n\n"

# Step B5: Iterate All Key/Values
sym_hash2.each {|k,v| puts "#{k} is key for #{v}"}

# Step B6: Iterate Keys Only
sym_hash2.each{|k,v| puts k}

# Step B7: Iterate Values Only
sym_hash2.each {|k,v| puts v}

puts "#{"="*40}"

####################################

#=================
#PART 2: STRING HASH (FULL)

#String Hash
string_post = {
    "date" => "6/10/16",
    "title" => "About my Turtle",
    "author" => "Tom Greene",
    "body" => "I just saw my turtle surfing in the ocean!"
}

p string_post[:author]
string_post[:author] = "Sarah Brady"
p string_post[:author]
string_post[:likes] = 300

p string_post.keys
p string_post.values
p string_post
