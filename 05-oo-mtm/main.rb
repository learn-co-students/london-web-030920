require_relative './person'
require_relative './virus'
require_relative './infection'

cv19 = Virus.new('Coronavirus')
flu = Virus.new('Common Flu')
herpes = Virus.new('Herpes')
swine_flu = Virus.new('🐷🤧')

dan = Person.new('daniel', 28)
serg = Person.new('sergio', 30)
ben = Person.new('ben', 29)
julian = Person.new('julian', 36)
sarah = Person.new('sarah', 29)
charly = Person.new('charly', 35)
jo = Person.new('jo', 25)

def infect(person, infection)
  Infection.new(person, infection)
end

5000000.times do
  infect(Person.all.sample, Infection.all.sample)
end

require 'pry'; binding.pry