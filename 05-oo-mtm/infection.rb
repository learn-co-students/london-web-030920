class Infection

  @@all = []

  attr_accessor :person, :virus

  def initialize(person, virus)
    @person = person
    @virus = virus
    @@all << self
  end

  def self.all
    @@all
  end
end