class Booking < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :people_quantity, numericality: true
  validates :duration, presence: true
end
