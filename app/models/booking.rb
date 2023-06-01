class Booking < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :people_quantity, numericality: true
  validates :amount, presence: true
end
