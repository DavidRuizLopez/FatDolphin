class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :gears
  # has_many :rents
  has_many :reviews
  has_many :rents
  # has_many :rents, through: :gears
  validates :username, presence: true, uniqueness: true
end
