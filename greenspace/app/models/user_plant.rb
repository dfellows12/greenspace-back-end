class UserPlant < ApplicationRecord
    belongs_to :user
    belongs_to :plant
    has_many :notes
    has_many :waterings
    has_many :fertilizings
    has_one_attached :image
end
