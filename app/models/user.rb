class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
<<<<<<< HEAD
          :recoverable, :rememberable, :validatable

  has_many :products
=======
         :recoverable, :rememberable, :validatable
>>>>>>> master
end
