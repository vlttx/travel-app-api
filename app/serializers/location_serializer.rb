class LocationSerializer < ActiveModel::Serializer
  attributes :id
  has_many :attractions
  has_many :residents
end
