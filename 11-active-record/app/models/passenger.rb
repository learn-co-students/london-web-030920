class Passenger < ActiveRecord::Base
  has_many :rides
  has_many :cars, through: :rides

  def avg_ride_distance
    rides.all.map{ |ride| ride.distance }.sum / rides.all.size.to_f
  end
end
