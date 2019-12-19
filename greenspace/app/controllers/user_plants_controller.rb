class UserPlantsController < ApplicationController
    def index
        userPlants = UserPlant.all 
        render json: userPlants
    end

    def create
        userPlant = UserPlant.create(user_id: params["userId"],plant_id: params["plant"]["id"], name: params["plant"]["name"],scientific_name: params["plant"]["scientific_name"], 
        info: params["plant"]["info"], image_url: params["plant"]["image_url"], category: params["plant"]["category"])
        render json: userPlant
    end

    def destroy
        userPlant = UserPlant.find(params[:userplant][:id])
        userPlant.delete
        render json: userPlant
    end

    def show
        userPlant = UserPlant.find(params[:id])
        render json: userPlant
    end

    def update
        userPlant = UserPlant.find(params[:userplant][:id])
        userPlant.update(
        name: params["userplant"]["name"], 
        scientific_name: params["userplant"]["scientific_name"], 
        info: params["userplant"]["info"], 
        image_url: params["userplant"]["image_url"],
        category: params["userplant"]["category"])
        render json: userPlant
    end

end
