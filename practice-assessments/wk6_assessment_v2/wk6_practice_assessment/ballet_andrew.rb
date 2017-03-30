#Overall looks good,

class Dancer
  #make sure that when the isntrucations ask for somethign to be readable vs readable & writable
  #you use both attr_reader and attr_accessor appropriately
    attr_accessor :name, :age, :card

    def initialize(name, age)
        @name = name
        @age = age
        @card = []
    end

    def pirouette
        "*twirls*"
    end
    #no need to set a local variable to bows you can just have the method return the string like in #pirouette
    def bow
        # style = "*bows*"
        "*bows*"
    end

    #great
    def queue_dance_with(partner)
        @card.push(partner)
    end
    # if we are removing the first perosn in the array we could use delete_at as we won't need knowledge of what that element actually is
    # the method Array#delete_at does two things
    # 1. it removes an element from the specific index
    # 2. it returns that element
    #with this we can leverage the code to somethign liek

    def begin_next_dance
      next_dancer = @card.delete_at(0)
      "Now dancing with #{next_dancer}"
    end

    #You could also refactor your code to do somethign similar as delete returns the element it removes as well
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
