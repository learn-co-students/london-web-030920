# REVIEW ITERATORS: each, map, find, select

# a class is a blueprint

class Person

  # @@ vars are CLASS variables.
  @@all = []

  attr_reader :age, :name
  attr_writer :name, :age

  # arguments passed to initialize are the ones you
  # unsurprisingly, pass to .new calls
  def initialize(first_name, how_old)
    # @ vars are called _instance variables_
    @name = first_name
    @age = how_old
    # if self is in an instance method,
    # it refers to an instance!
    @@all << self
  end

  def say_hello
    puts "Hello, my name is #{@name}"
  end

  def age_a_year
    @age += 1
  end

  # methods prefixed with .self are CLASS methods
  # accessible on a class, NOT INSTANCES
  # if self is a prefix to a method name,
  # it means the class
  def self.all
    @@all
  end
end


# to create an _instance_ of a class
# we have to call ClassName.new
# when we call Classname.new, what gets actually run
# is a method called initialize
dan = Person.new('daniel', 28)
serg = Person.new('sergio', 30)

require 'pry'; binding.pry