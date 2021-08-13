class AmenitiesProperty < ApplicationRecord
    belongs_to :amenity
    belongs_to :property
end