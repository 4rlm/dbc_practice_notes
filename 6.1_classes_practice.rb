class Sender
    def initialize(to, from)
        @to = to
        @from = from
        @weather = "cloudy"
    end

    def happy_mail(date)
        puts "\nDear #{@to},\n\nI'm so happy today because I'm seeing my friend.  How are you?\nIt's been really #{@weather} around here lately.\n\nFrom, #{@from}\n\n#{date}\n\n"
    end
end

sender1 = Sender.new("Peter", "Adam")
# sender1.happy_mail("GaHee", "Adam")
sender1.happy_mail("March 22nd, 2017")
