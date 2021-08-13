class Amenity < ApplicationRecord
    has_many :amenities_properties
    has_many :properties, through: :amenities_properties
end
