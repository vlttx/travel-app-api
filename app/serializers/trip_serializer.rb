class TripSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :user
  has_many :visits
  has_many :attractions
  has_many :locations
end
