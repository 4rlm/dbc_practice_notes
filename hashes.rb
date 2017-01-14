#Allows us to set up labeled data.
#Look up value by its key. (key - value pairs).
# Symbol format is most efficient.

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

# Symbol Hash - Ideal
symbol_post = {
        date: "6/10/16",
        title: "About my Turtle",
        author: "Tom Greene",
        body: "I just saw my turtle surfing in the ocean!"
}

p symbol_post[:author]
symbol_post[:author] = "Sarah Brady"
p symbol_post[:author]
symbol_post[:likes] = 300

p symbol_post.keys
p symbol_post.values
p symbol_post
