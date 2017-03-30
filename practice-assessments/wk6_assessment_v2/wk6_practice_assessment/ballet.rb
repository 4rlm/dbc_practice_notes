class Dancer
    attr_accessor :name, :age, :card

    def initialize(name, age)
        @name = name
        @age = age
        @card = []
    end

    def pirouette
        "*twirls*"
    end

    def bow
        style = "*bows*"
    end

    def queue_dance_with(partner)
        @card.push(partner)
    end

    def begin_next_dance
        partner = @card[0]
        @card.delete(@card[0])
        "Now dancing with #{partner}."
    end
end

p dancer =  Dancer.new("Misty Copeland", 33)
p dancer.age = 34
p dancer.pirouette
p dancer.bow
p dancer.card
p dancer.queue_dance_with("Mikhail Baryshnikov")
p dancer.card
p dancer.queue_dance_with("Anna Pavlova")
p dancer.begin_next_dance
p dancer.card
