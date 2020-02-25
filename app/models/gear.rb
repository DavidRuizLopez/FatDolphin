class Gear < ApplicationRecord
  belongs_to :user
  has_many :rents


  def self.categories
    ['camera', 'tripods', 'lents']
  end
end
