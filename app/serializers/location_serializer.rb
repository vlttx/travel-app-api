class LocationSerializer < ActiveModel::Serializer
  attributes :city, :state, :country
end
