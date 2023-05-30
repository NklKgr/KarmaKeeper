class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :products, dependent: :destroy # user is selling products
  has_many :bookings, dependent: :destroy
  has_many :products, through: :bookings, dependent: :destroy # user is buying products through bookings

  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
end
