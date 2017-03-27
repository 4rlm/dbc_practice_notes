class Dancer
    def initialize(name, age, pirouette, bow, leap, card_array,)
        @name = name
        @age = age
        @pirouette = pirouette
        @bow = bow
        @leap = leap
        @card = card_array
    end

    attr_accessor :age, :pirouette, :bow, :leap, :card_array
    attr_reader :name


    def queue_dance_with(partner)
        partner
    end

    def card_array

    end



end

misty = Dancer.new("Misty Copeland", 33, "*twirls*", "*bows*", "*over partner*", ["Mikhail Baryshnikov"])

p misty.name
p misty.age = 34
p misty.pirouette
p misty.bow
p misty.leap
p misty.queue_dance_with("Mikhail Baryshnikov")
p misty.card = ["Mikhail Baryshnikov", "Anna Pavlova"]
p misty.queue_dance_with("Anna Pavlova")
