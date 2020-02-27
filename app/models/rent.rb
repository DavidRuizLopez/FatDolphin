class Rent < ApplicationRecord
  belongs_to :user
  belongs_to :gear

  validates :check_in, presence: true
  validates :check_out, presence: true
end
