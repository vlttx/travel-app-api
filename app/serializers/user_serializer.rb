class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :hometown
  has_many :trips
	# has_many :visits, through: :trips
 #    has_many :attractions, through: :trips
 #    has_many :locations, through: :trips
	# has_many :comments
end
