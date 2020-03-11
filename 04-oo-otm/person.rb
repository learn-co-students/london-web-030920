class Person

  @@all = []

  attr_accessor :age, :name, :virus

  def initialize(first_name, how_old, infection_virus)
    @name = first_name
    @virus = infection_virus
    @age = how_old
    @@all << self
  end

  def say_hello
    puts "Hello, my name is #{@name}"
  end

  def age_a_year
    @age += 1
  end

  def self.all
    @@all
  end
end
