class SoloGame
    attr_accessor :goal_hash
    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
        @divider = "\n#{"-"*30}\n"
        @clear = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
        @msg ={
                guesser_prompt: "#{@divider}Please guess only 1 letter of the secret word...\n\n",
                ump_win_msg: "#{@clear}#{@divider}Congratulations!  You get 100 Bonus Points!\nYou guessed the Secret Word: ",
                ump_0_msg: "#{@clear}#{@divider}Game Over!  You reached the maximum attempts!",
                ump_success_msg: "#{@clear}#{@divider}Wow!  The letter you guessed is correct!\nKeep going!  You're on a winning streak.\nRemaining guesses: ",
                ump_fail_msg: "#{@clear}#{@divider}Yikes!  That's the wrong answer.\nDon't worry.  You can guess again.\nRemaining guesses: "
            }
        @win = false
        @fail = false
        @logic = {
            answers: [],
        }
    end

    def p1_input
        puts "#{@clear}#{@divider}\n\nWelcome #{@player1},\nPlease enter a Secret Word for #{@player2} to guess.  Then add a category for the word, then something unique about it.\n\n"
        puts "Secret:"
        @logic[:secret] = gets.chomp
        puts "Category:"
        @logic[:category] = gets.chomp
        puts "Unique:"
        @logic[:unique] = gets.chomp
        p1_logic
        p2_welcome
    end

    def p1_logic
        @logic[:secrets] = splitter(@logic[:secret])
        @logic[:hiddens] = splitter(@logic[:secret])
        @logic[:secret_length] = @logic[:secret].length
        @logic[:max_attempts] = @logic[:secret_length]+3
        @logic[:vowels] = voweler(@logic[:secret])
    end

    def p2_welcome
        puts "#{@clear}#{@divider}\n\nHi #{@player2},\nWelcome to the Guessing Game!\n#{@player1} has entered secret word for you to guess.\n\nHere are the rules of the game . . . \n* 10 points for each correct letter.\n* 100 Bonus Points if you complete the challange!\n* 3 Wrong Guesses Allowed\n* Total Guesses Allowed: #{@logic[:max_attempts]}\n\n"
        hinter
    end

    def hinter
        puts "#{@divider}\n\nHints . . ."
        puts "Length: #{@logic[:secret_length]}"
        puts "Vowels: #{@logic[:vowels]}"
        puts "Category: #{@logic[:category]}"
        puts "Unique: #{@logic[:unique]}\n\n"
        guesser
    end

    def guesser
        puts "Please guess only one letter of the Secret Word."
        @logic[:answer] = gets.chomp
        score_tallier
    end

    def score_tallier
        @logic[:answers].push(@logic[:answer])
        @logic[:attempts] = @logic[:answers].length
        @logic[:remaining] = @logic[:max_attempts] - @logic[:attempts]
        @logic[:wrongs] = @logic[:answers] - @logic[:secrets][0]
        @logic[:wrongs].uniq!
        @logic[:answers].each{|x| @logic[:hiddens][0].delete(x)}
        @logic[:rights] = @logic[:secrets][0] - @logic[:hiddens][0]
        @logic[:points] = @logic[:rights].count*10
        display_maker
    end

    def display_maker
        @logic[:displays] = []
        @logic[:secrets][0].each do |x|
            if @logic[:hiddens][0].include?(x)
                @logic[:displays].push(" _ ")
            else
                @logic[:displays].push(" #{x} ")
            end
        end
        @logic[:display] = joiner(@logic[:displays])

        winner
    end

    def winner
        win = @logic[:secrets][0] - @logic[:rights]
        if win.count == 0
            puts "#{@msg[:ump_win_msg]} #{@logic[:secret]}"
            score_formatter
            @win = true
            return
        else
            maxed_out
        end
    end

    def maxed_out
        if @logic[:remaining] == 0
            puts "#{@msg[:ump_0_msg]} #{(@logic[:attempts])}"
            puts "The Secret Word is: #{@logic[:secret]}"
            score_formatter
            return
        else
            move_on
        end
    end

    def move_on
        if @logic[:wrongs].include?(@logic[:answer])
            puts "#{@msg[:ump_fail_msg]} #{@logic[:remaining]}"
            @fail = false
        else
            puts "#{@msg[:ump_success_msg]} #{@logic[:remaining]}"
            @fail = true
        end
        score_formatter
        hinter
    end

    def score_formatter
        @logic[:points] = @logic[:rights].count*10
        @logic[:right] = joiner(@logic[:rights])
        @logic[:wrong] = joiner(@logic[:wrongs])
        @logic[:total] = joiner(@logic[:answers])
        score_printer
    end

    def score_printer
        puts "\n\nSecret Word: #{@logic[:display]}\n\n"
        puts "ScoreBoard..."
        puts "Points: #{@logic[:points]}"
        puts "Correct: #{@logic[:right]}"
        puts "Wrong: #{@logic[:wrong]}"
        puts "Total Entered: #{@logic[:total]}"
        puts "Total Attempts: #{@logic[:attempts]}"
        puts "Remaining Attempts: #{@logic[:remaining]}"
    end

    def joiner(array)
        string = array.join(" ")
    end

    def splitter(string)
        array = []
        array.push(string.split(""))
    end

    def voweler(str)
        str.scan(/[aeouiy]/).count
    end

end

game1 = SoloGame.new("Gahee", "Adam")
game1.p1_input
# game1.welcome_p2
