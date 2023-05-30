class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings, dependent: :destroy

  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :unit, inclusion: { in: ["hours", "days", "months", "flights", "cruise days"] }
end
