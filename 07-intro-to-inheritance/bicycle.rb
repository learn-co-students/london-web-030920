class Bicycle < Vehicle
  @@all = []

  attr_accessor :frame_type

  def initialize(colour, price, frame_type)
    super(colour, "human", 2, 1, price)

    @frame_type = frame_type

    @@all << self
  end

  def self.create_bike()
    self.new()
  end

  def self.all
    @@all
  end
end