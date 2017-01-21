# https://github.com/4rlm/phase-0-tracks/blob/master/ruby/gps2_2.rb

grocery_list = {}

def list_creator(grocery_list)
    puts "\n----------------------\n"
    puts "Add items to your grocery list:"
    puts "Ex format: 'carrots apples cereal pizza"
    puts "\n----------------------\n"
    items = gets.chomp
    items_array = items.split(' ')

    items_array.each do |item|
        grocery_list.store(item, 0)
    end

        list_printer(grocery_list)
end

def item_adder(grocery_list)
    list_creator(grocery_list)
    puts "New item(s) added."
    list_printer(grocery_list)
end

def item_remover(grocery_list)
    puts "Enter item to remove:"
    puts "Ex format: 'carrots apples cereal pizza"
    items = gets.chomp
    items_array = items.split(' ')

    items_array.each do |item|
        grocery_list.delete(item)
        puts "Removed #{item}."
    end

    list_printer(grocery_list)
end

def quantity_updater(grocery_list)
    puts "\n----------------------\n"
    puts "What would you like to update?"
    key = gets.chomp

    puts "\n----------------------\n"
    puts "You have '#{key}: #{grocery_list[key]}' on your list."
    puts "Enter new quantity for #{key}:"
    value = gets.chomp

    grocery_list[key] = value

    puts "Item(s) count updated."
    list_printer(grocery_list)
end

def list_printer(grocery_list)
    puts "\n----------------------\n"
    puts "Here's a list of your items:"
    grocery_list.each{|key,value|
        puts "#{key}: #{value}"
    }

    option_list = [
        "\n----------------------\n",
        "You may update your list by entering:",
        "'add' to add an item.",
        "'remove' to remove an item.",
        "'change' to change the quantity.",
        "'done' if list is complete.",
        "\n----------------------\n"]

    options = option_list.each{|option| option}
    puts options

    response = gets.chomp

    if response == 'add'
        item_adder(grocery_list)
    elsif response == 'remove'
        item_remover(grocery_list)
    elsif response == 'change'
        quantity_updater(grocery_list)
    elsif response == 'done'
        puts "Have a nice day!"
        exit
    else
        puts "You entered an invalid selection."
        puts options
    end

end

list_creator(grocery_list)
