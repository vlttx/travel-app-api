class Location < ApplicationRecord
has_many :residents, foreign_key: :hometown_id
end
