class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name
  belongs_to :hometown, serializer: HometownSerializer
  has_many :trips, serializer: TripSerializer
  # has_many :locations, through: :trips
	# has_many :visits, through: :trips
 #    has_many :attractions, through: :trips
  
	# has_many :comments
end
