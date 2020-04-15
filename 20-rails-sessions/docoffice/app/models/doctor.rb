class Doctor < ApplicationRecord
  has_many :patients

  validates :name, :age, :speciality, presence: true
  validates :age, numericality: { greater_than_or_equal_to: 21 }
end
