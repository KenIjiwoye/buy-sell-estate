class Property < ApplicationRecord
    belongs_to :user, dependent: :destroy
    has_many :amenities_properties
    has_many :amenities, through: :amenities_properties, dependent: :destroy
end
