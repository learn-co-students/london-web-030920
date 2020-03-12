class Virus
  @@all = []

  attr_accessor :name

  def initialize(virus_name)
    @name = virus_name 
    @@all << self
  end

  def self.number_of_cases
  end

  def number_of_cases
    people_infected.length
  end

  
  def avg_age_of_a_infected_person
    people = people_infected.map {|person| person.age } 
    people.sum / people.size.to_f
  end
  
  def infections
    Infection.all.select { |infection| infection.virus == self }
  end
  
  def people
    infections.map {|infection| infection.person }.uniq
  end

  def self.all
    @@all
  end
end