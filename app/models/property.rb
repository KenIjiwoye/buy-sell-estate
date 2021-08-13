class Property < ApplicationRecord
    belongs_to :user
    has_many :amenities_properties
    has_many :amenities, through: :amenities_properties
end
