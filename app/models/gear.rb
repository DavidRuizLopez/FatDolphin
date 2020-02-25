class Gear < ApplicationRecord
  belongs_to :user
  has_many :rents
  has_one_attached :photo
  
  
  def self.categories
    ['camera', 'tripods', 'lents']
  end
end
