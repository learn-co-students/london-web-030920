class Person

  @@all = []

  attr_accessor :age, :name

  def initialize(first_name, how_old)
    @name = first_name
    @age = how_old
    @@all << self
  end

  def say_hello
    puts "Hello, my name is #{@name}"
  end

  def age_a_year
    @age += 1
  end

  def infections
    Infection.all.select { |infection| infection.person == self }
  end

  def viruses
    infections.map {|infection| infection.virus }.uniq
  end

  def self.all
    @@all
  end
end
