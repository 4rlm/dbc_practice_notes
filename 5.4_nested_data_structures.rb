# 5.4 Nested Data Structures - Video

=begin
Review of Simple Arrays and Hashes ... 0:20
Definition and Example of Nested Data Structure ... 2:21
Designing a Nested Data Structure from Scratch ... 4:13
Access Nested Items ... 7:51
Interact with Nested Items ... 10:08

1. Data Types:
a. Array: simple flat list, access items with index or integer, methods that can be called are different (.last, .map!).  Look in Ruby docs to check if you can use the method on the array.

b. Hash: uses keys and values, access items with key, methods that can be called are different (.last, .map!).  Look in Ruby docs to check if you can use the method on the hash.

2. A nested data structure is a collection data type within another collection data type, such as an array of arrays, or a hash in an array, etc.

Accessing: Can only use array methods to access arrays inside hashes.  So, we need to use index.  Methods available to strings inside the array are string methods.  So, string methods needed to access "refrigerator".

house["kitchen"][1] => accesses refrigerator.
house["attic"].push("ghost") => add ghost to attic.
house["living_room"].push("cat") => add cat to living room.
house["living_room"][2] = "dog" => replace cat with dog.
=end

####################
=begin
divide = "\n---------------------\n"

# Array (Ex):
coding_moods = [
    "nervous",
    "excited",
    "triumphant"]
p coding_moods
puts divide

# Hash (Ex):
difficulty = {
    "HTML" => "easy",
    "CSS" => "intermediate",
    "Ruby" => "advanced"}
p difficulty
puts divide

# Array of Arrays (Ex):
pairings = [
    ["peanut butter", "jelly"],
    ["cilantro", "tomatoes"],
    ["rice", "curry"]
]
p pairings
puts divide

# Hash of Arrays (Ex):
house = {
    living_room: [
        "sofa",
        "chandelier"
    ],
    kitchen: [
        "table",
        "refrigerator"
    ],
    bedroom_1: [
        "bed",
        "rug"
    ],
    bedroom_2: [
        "bed",
        "desk"
    ],
    bathroom: [
        "mirror",
        "shower"
    ],
    attic: [
        "boxes"
    ]
}
puts divide
puts "Original House Hash (1):"
puts house
puts divide

puts "Modified House Hash (2):"
puts "Access refrigerator in kitchen:"
puts "house[:kitchen][1] => #{house[:kitchen][1]}"
puts "Added ghost to attic:"
house[:attic].push("ghost")
puts "Added cat to living room:"
house[:living_room].push("cat") # => add cat to living room.
puts house

puts divide
puts "Modified House Hash (3):"
house[:living_room][2] = "dog" # => replace cat with dog.
puts "Replaced cat with dog in living room:"
puts house
=end

classroom = {
    desk1: [
        "pencils: 5",
        "erasers: 1",
        "notebooks: 2",
        "text books: 3"
    ],
    desk2: [
        "pencils: 3",
        "erasers: 2",
        "notebooks: 1",
        "text books: 4"
    ],
    desk3: [
        "pencils: 4",
        "erasers: 1",
        "notebooks: 3",
        "text books: 2"
    ],
    desk4: [
        "pencils: 1",
        "erasers: 4",
        "notebooks: 2",
        "text books: 2"
    ],
    desk5: [
        "pencils: 2",
        "erasers: 3",
        "notebooks: 4",
        "text books: 5"
    ]
}
divide = "\n---------------------\n"
section_divide ="\n============\n"

puts section_divide
puts "(1) Original Classroom Hash:"
puts "(1) Original Classroom: #{classroom}#{divide}"
puts "Desk1: #{classroom[:desk1]}#{divide}"
puts "Desk1 Pencils: #{classroom[:desk1][0]}"
puts "Desk2 Erasers: #{classroom[:desk2][1]}"
puts "Desk3 Notebooks: #{classroom[:desk3][2]}"
puts "Desk4 Text Books: #{classroom[:desk4][3]}"
puts "Desk4 Text Books: #{classroom[:desk4][3]}"

puts section_divide
puts "(2) Modified Classroom Hash:"
puts "classroom[:desk1].push('stickers: 3')"
classroom[:desk1].push("stickers: 3")
puts "classroom[:desk2].push('markers: 2')"
classroom[:desk2].push("markers: 2")
puts "classroom[:desk3].push('pencil sharpener: 1')"
classroom[:desk3].push("pencil sharpener: 1")
puts "classroom[:desk4].push('stickers: 8')"
classroom[:desk4].push("stickers: 8")
puts "classroom[:desk5].push('crayons: 12')"
classroom[:desk5].push("crayons: 12")
puts "(2) Modified Classroom: #{classroom}#{divide}"

puts section_divide
puts "(3) Modified Classroom Hash:"
puts "classroom[:desk1][4] = 'crayons: 18'"
classroom[:desk1][4] = "crayons: 18"
puts "classroom[:desk2][4] = 'stickers: 8'"
classroom[:desk2][4] = "stickers: 8"
puts "classroom[:desk3][4] = 'sticker books: 2'"
classroom[:desk3][4] = "sticker books: 2"
puts "classroom[:desk4][4] = 'pencil sharpeners: 1'"
classroom[:desk4][4] = "pencil sharpeners: 1"
puts "classroom[:desk5][4] = 'markers: 7'"
classroom[:desk5][4] = "markers: 7"
puts "(3) Modified Classroom: #{classroom}#{divide}"
puts section_divide
