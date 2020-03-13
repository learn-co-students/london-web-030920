class Car < Vehicle
  @@all = []

  def initialize(colour, fuel, seats, price)
    super(colour, fuel, 4, seats, price)
    @@all << self
  end

  def sound
    if fuel == "electric"
      "hummmmmm"
    else
      super
    end
  end 

  def self.all
    @@all
  end
end