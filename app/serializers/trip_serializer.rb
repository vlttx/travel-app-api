class TripSerializer < ActiveModel::Serializer
  attributes :start_date, :end_date, :name, :imageurl
  belongs_to :user
  belongs_to :location, serializer: LocationSerializer
end
