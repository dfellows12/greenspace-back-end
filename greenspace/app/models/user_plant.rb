class UserPlant < ApplicationRecord
    belongs_to :user
    belongs_to :plants
    has_many :notes
end
