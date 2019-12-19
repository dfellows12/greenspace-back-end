class Note < ApplicationRecord
    belongs_to :user
    belongs_to :user_plant
end
