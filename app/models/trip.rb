class Trip < ApplicationRecord
  belongs_to :user
  # belongs_to :location
  # has_many :visits
  # has_many :attractions, through: :visits

  validates :name, :start_date, :end_date, presence: true
end
