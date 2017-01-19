
# Basic - Step 1: .store method
# test_hash = {}
# puts "Enter New Name"
# answer = gets.chomp
# split_name = answer.split(" ")
# fname = split_name[0]
# lname = split_name[1]
# test_hash.store(fname, lname)
# puts test_hash


# Loop - Step 2: .store method
test_hash = {}

def core(test_hash)
    puts "Enter New Name"
    answer = gets.chomp
    split_name = answer.split(" ")
    fname = split_name[0]
    lname = split_name[1]
    test_hash.store(fname, lname)
    # puts test_hash
    choice(test_hash)
end

def choice(test_hash)
    puts "Enter [a] to add more names, or [r] for results."
    answer = gets.chomp
    if answer == "a"
        core(test_hash)
    elsif answer == "r"
        results(test_hash)
    else
        "Enter [a] to add more names, or [r] for results."
    end
end


def results(test_hash)
    puts test_hash
end

core(test_hash)
