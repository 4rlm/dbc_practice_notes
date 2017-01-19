# 5.5 Solo Challenge: Manipulating Strings with Iteration

spy_hash = {}

def name_encryptor(spy_hash)
    puts "---------------------------"
    puts "Type a name to encrypt:"
    answer = gets.chomp

    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    orig_vows = 'aeiouyaeiouy'
    orig_cons = alphabet.delete('aeiouy')
    vows = orig_vows.chars
    cons = orig_cons.chars
    capitalize_original = answer.split.map(&:capitalize).join(' ')
    downcase_original = answer.downcase
    name = downcase_original.chars

    name = name.map! {|ch|
        if vows.include?(ch)
            vows.rotate(1)[vows.index(ch)]
        else
            ch
        end

        if cons.include?(ch)
            cons.rotate(1)[cons.index(ch)]
        else
            ch
        end
    }
    encrypted_name = name.join
    split_encrypted = encrypted_name.split(' ')
    giv_name_encrypted = split_encrypted[0].capitalize
    mid_name_encrypted = split_encrypted[1].capitalize unless split_encrypted[1] == nil
    sur_name_encrypted = split_encrypted[2].capitalize unless split_encrypted[2] == nil

    swapped_encrypted_full_name = "#{sur_name_encrypted} #{mid_name_encrypted} #{giv_name_encrypted}"

    spy_hash.store(capitalize_original, swapped_encrypted_full_name)

    choice(spy_hash)
end

def choice(spy_hash)
    puts "--------------------------"
    puts "\nSuccess!  Names Saved!"
    puts "Press 'Enter' to add another name, or type [view] to view results."

    answer = gets.chomp

    if answer == "view"
        name_encryptor_results(spy_hash)
    else
        name_encryptor(spy_hash)
    end
end

def name_encryptor_results(spy_hash)

        puts "\n==== Encrypted Names: ====\n"
        spy_hash.each{|key, value|
            puts "-----------------------------"
            puts "Input Name: #{key}"
            puts "Encoded Name: #{value}"
        }
        puts "------------------------------"
        puts "\n====================\n"
end

name_encryptor(spy_hash)


###############


    # loop do
    #     puts "You may encrypt more names or enter 'quit' to exit."
    #     break if input == 'quit'
    #     survey_results_method(client_survey)
    # end

#################


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
# test_hash = {}
#
# def core(test_hash)
#     puts "Enter New Name"
#     answer = gets.chomp
#     split_name = answer.split(" ")
#     fname = split_name[0]
#     lname = split_name[1]
#     test_hash.store(fname, lname)
#     # puts test_hash
#     choice(test_hash)
# end
#
# def choice(test_hash)
#     puts "Enter [a] to add more names, or [r] for results."
#     answer = gets.chomp
#     if answer == "a"
#         core(test_hash)
#     elsif answer == "r"
#         results(test_hash)
#     else
#         "Enter [a] to add more names, or [r] for results."
#     end
# end
#
#
# def results(test_hash)
#     puts test_hash
# end
#
# core(test_hash)
