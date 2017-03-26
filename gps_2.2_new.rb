# https://github.com/4rlm/phase-0-tracks/blob/master/ruby/gps2_2.rb

msg = {
creator_msg: "\n\n#{"="*40}\n\nWelcome to the Grocery List App",
adder_msg: "\n\nPlease add items to the grocery list, each separated with a space.",
adder_confirm: "\n\nThank you!  You've added the following items:",
adder_prompt: "Enter a quantity for:",
updater_list_prompt: "\n\nPlease enter the items you would like to update, each separated with a space.",
updater_prompt: "\n\nEnter a quantity for:",
updater_confirm: "\n\nYou've chosen to update:",
remover_msg: "\n\nPlease enter the items you'd like to remove, each separated with a space.",
remover_confirm: "\n\nThe following items have been removed from your list.",
printer_prompt: "\n\nEnter 'add', 'remove', 'update', or 'exit'",
printer_confirm: "Your Grocery list Includes:",
exit_msg: "\n\nThank you for using the shopping list app.\n\nHave a great day!\n\n"}


def creator(msg)
    puts msg[:creator_msg]
    master_list = {}
    adder(master_list, msg)
end

def adder(master_list, msg)
    puts msg[:adder_msg]
    item_string = gets.chomp
    items = item_string.split(" ")
    puts "#{msg[:adder_confirm]} #{items}\n\n"
    items.each do |item|
        puts "#{msg[:adder_prompt]} #{item}\n\n"
        num = gets.chomp
        master_list[:"#{item}"] = num
    end
    printer(master_list, msg)
end

def remover(master_list, msg)
    puts msg[:remover_msg]
    item_string = gets.chomp
    items = item_string.split(" ")
    items.each do |item|
        master_list.delete(:"#{item}")
    end
    puts "#{msg[:remover_confirm]} #{items}\n\n"
    printer(master_list, msg)
end

def updater(master_list, msg)
    puts msg[:updater_list_prompt]
    item_string = gets.chomp
    items = item_string.split(" ")
    puts "#{msg[:updater_confirm]} #{items}\n\n"
    items.each do |item|
        puts "#{msg[:updater_prompt]} #{item}\n\n"
        num = gets.chomp
        master_list[:"#{item}"] = num
    end
    printer(master_list, msg)
end

def printer(master_list, msg)
    puts msg[:printer_confirm]
    master_list.each do |k,v|
        puts "#{k}: #{v}"
    end
    puts msg[:printer_prompt]
    choice = gets.chomp
    options(choice, master_list, msg)
end

def options(choice, master_list, msg)
    if choice == "add"
        adder(master_list, msg)
    elsif choice == "remove"
        remover(master_list, msg)
    elsif choice == "update"
        updater(master_list, msg)
    else
        puts msg[:exit_msg]
    end
end

creator(msg)
