class Virus
  @@all = []

  attr_accessor :name

  def initialize(virus_name)
    @name = virus_name 
    @@all << self
  end

  def self.number_of_cases
    Person.all.select {|person| person.virus }.size
  end

  def number_of_cases
    people_infected.length
  end

  def people_infected
    # self used in a instance method
    # refrences the instance
    Person.all.select {|person| person.virus == self }
  end

  def avg_age_of_a_infected_person
    people = people_infected.map {|person| person.age } 
    people.sum / people.size.to_f
  end

  def self.all
    @@all
  end
end