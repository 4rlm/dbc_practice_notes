
# client's name, age, number of children, decor theme, and so on

client_survey = {
    name: nil,
    children_count: nil,
    decor_theme: nil,
    budget: nil,
    time_horizon: nil,
}


def survey_questions_method(client_survey)
    puts "1. Enter client's Name:"
    client_survey[:name] = gets.chomp

    puts "2. Enter number of children:"
    client_survey[:children_count] = gets.chomp

    puts "3. Enter decor theme:"
    client_survey[:decor_theme] = gets.chomp

    puts "4. Enter budget:"
    client_survey[:budget] = gets.chomp

    puts "5. Enter time horizon:"
    client_survey[:time_horizon] = gets.chomp

    survey_results_method(client_survey)
end

def survey_results_method(client_survey)
    puts "----- Survey Answers: ------"
    puts "Client's Name: #{client_survey[:name]}"
    puts "Number of Children: #{client_survey[:children_count]}"
    puts "Decor Theme: #{client_survey[:decor_theme]}"
    puts "Budget: #{client_survey[:budget]}"
    puts "Time Horizon: #{client_survey[:time_horizon]}"
    puts
    puts "Would you like to edit any of the values in the survey? [y/n]"
    edit_survey = gets.chomp
    if edit_survey == "y"
        edit_survey_questions_method(client_survey)
    else
        puts "Your survey has been entered and saved!"
    end
end

def edit_survey_questions_method(client_survey)
    puts "Enter number of question you would like to edit:"
    puts "Client's Name [1]"
    puts "Number of Children [2]"
    puts "Decor Theme [3]"
    puts "Budget [4]"
    puts "Time Horizon [5]"

    input = nil

    loop do
        puts "Please enter a number 1-5 or 'done' to exit."

        response_num = gets.chomp
        case response_num
        when "1"
            puts "1. Enter client's Name:"
            client_survey[:name] = gets.chomp
        when "2"
            puts "2. Enter number of children:"
            client_survey[:children_count] = gets.chomp
        when "3"
            puts "3. Enter decor theme:"
            client_survey[:decor_theme] = gets.chomp
        when "4"
            puts "4. Enter budget:"
            client_survey[:budget] = gets.chomp
        when "5"
            puts "5. Enter time horizon:"
            client_survey[:time_horizon] = gets.chomp
        else
            puts "Goodbye!"
        end

        break if input == 'done'

        survey_results_method(client_survey)
    end

end

survey_questions_method(client_survey)
