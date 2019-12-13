class UserPlantsController < ApplicationController
    def index
        userPlants = UserPlant.all 
        render json: userPlants
    end

    def show
        userPlant = UserPlant.find_by(params[])
    end

    def create
        byebug
    end


end
