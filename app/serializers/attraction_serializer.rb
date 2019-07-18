class AttractionSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :location
  has_many :comments
end
