require 'pry'
require_relative './vehicle'
require_relative './car'
require_relative './bicycle'

bike = Bicycle.new("red", 300, "racing")

Bicycle.all

bike.frame_type

car = Car.new("blue", "petrol", 5, 3000)


binding.pry
