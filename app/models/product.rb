class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings, through: :users

  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :unit, inclusion: { in: ["hours", "days", "months", "flights", "cruise days"] }
end
