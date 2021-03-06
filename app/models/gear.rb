class Gear < ApplicationRecord
  belongs_to :user
  has_many :rents
  has_many :reviews
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode

  # validates :name , presence: true
  # validates :category , presence: true
  # validates :user_id , presence: true
  # validates :price , presence: true

  def self.categories
    ['cameras', 'tripods', 'lenses', 'drones']
  end
end
