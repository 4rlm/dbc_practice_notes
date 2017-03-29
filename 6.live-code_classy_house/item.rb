class Item
    attr_reader :name, :color, :price

    def initialize(name, color, price)
        @name = name
        @color = color
        @price = price
    end

    def to_s
        "A #{@color} #{@name} that costs #{@price} cents."
    end

end

# Driver Code
# item = Item.new("cardboard box", "brown", 0)
# item2 = Item.new("piano", "black", 1000)
# puts item2
