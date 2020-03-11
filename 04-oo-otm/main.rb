require_relative './person'
require_relative './virus'



cv19 = Virus.new('Coronavirus')
flu = Virus.new('Common Flu')
herpes = Virus.new('Herpes')

dan = Person.new('daniel', 28, herpes)
serg = Person.new('sergio', 30, nil)
ben = Person.new('ben', 29, cv19)
julian = Person.new('julian', 36, flu)
jo = Person.new('jo', 25, flu)


require 'pry'; binding.pry