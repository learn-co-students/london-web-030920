class Ride < ActiveRecord::Base
  belongs_to :car
  belongs_to :passenger
end
