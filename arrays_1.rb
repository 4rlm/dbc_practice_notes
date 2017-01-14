suitcase = []

puts "Welcome to the suitcase assistant!"

loop do
    puts "Enter an item (or type 'exit'):"
    input = gets.chomp
    break if input == 'exit'
    suitcase << input
end

puts "Here's your packing list:"
puts suitcase
puts "Safe Travels!"
