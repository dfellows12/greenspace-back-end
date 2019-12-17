class UserPlantsController < ApplicationController
    def index
        userPlants = UserPlant.all 
        render json: userPlants
    end

    def show
        userPlant = UserPlant.find_by(params[])
    end

    def create
        userPlant = UserPlant.create(user_id: params["userId"],plant_id: params["plant"]["id"], name: params["plant"]["name"], scientific_name: params["plant"]["scientific_name"], water_schedule: params["plant"]["water_schedule"], fertilizer_schedule: params["plant"]["fertilizer_schedule"], info: params["plant"]["info"], image_url: params["plant"]["image_url"], category: params["plant"]["category"])
        render json: userPlant
    end

    def destroy
        userPlant = UserPlant.find(params[:userplant][:id])
        userPlant.delete
        render json: userPlant
    end


end
