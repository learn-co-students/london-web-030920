class Vehicle < Product

    @@all = []

    attr_accessor :colour, :fuel, :num_wheels, :seats

    def initialize(colour, fuel, num_wheels, seats, price, frame_type = nil, mileage = nil)
        super(price)
        @colour = colour
        @fuel = fuel
        @num_wheels = num_wheels
        @seats = seats

        @@all << self
    end

    def sound
        "whoosh"
    end


    def self.all
        @@all
    end

end