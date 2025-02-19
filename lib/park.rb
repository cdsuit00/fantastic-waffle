class Park

    attr_reader :name, :price

    def initialize(name, price)
        @name = name
        @price = price
        @vehicle = []
        @all_passengers = []
    end

    
end    