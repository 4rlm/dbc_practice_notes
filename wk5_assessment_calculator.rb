# Week 5 Practice Assessment

calc_hash = {}

def calculate(answer, calc_hash)
    if answer.include?(" ")
        formatted_answer = answer.split(" ")
    else
        formatted_answer = answer.chars
    end

    num1_raw = formatted_answer[0]
    num1 = num1_raw.to_i
    oper = formatted_answer[1]
    num2_raw =formatted_answer[2]
    num2 = num2_raw.to_i

    case oper
    when "+"
        output = num1 + num2
    when "-"
        output = num1 - num2
    when "*"
        output = num1 * num2
    when "/"
        output = num1 / num2
    else
        puts "--------------------------"
        puts "Error: Invalid operation."
        puts "Please try again using a valid operator and format:"
        puts "[5 + 4] or [5 - 4] or [5 * 4] or [5 / 4]"
        puts "--------------------------"
    end
    input = "#{num1} #{oper} #{num2}"
    output

    calc_hash.store(input, output)
    puts "#{input} = #{output}"

    choice(answer, calc_hash)
end

def choice(answer, calc_hash)
    puts "--------------------------"
    puts "Success! Enter another calculation, then press 'enter'.  Type [done] to view all results."

    answer = gets.chomp

    if answer == "done"
        calculate_results(answer, calc_hash)
    else
        calculate(answer, calc_hash)
    end
end

def calculate_results(answer, calc_hash)
    puts "\n==== Calculations Results: ====\n"
    calc_hash.each{|key, value|
        puts "-----------------------------"
        puts "#{key} = #{value}"
    }
    puts "------------------------------"
    puts "\n====================\n"
end

puts "--------------------------"
puts "Enter input to be calculated in following format:"
puts "[5 + 4] or [5 - 4] or [5 * 4] or [5 / 4]"
puts "--------------------------"
answer = gets.chomp

calculate(answer, calc_hash)
