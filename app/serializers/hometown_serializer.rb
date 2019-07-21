class HometownSerializer < ActiveModel::Serializer
  attributes :id, :city, :state, :country
end
