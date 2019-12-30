class UserPlantsController < ApplicationController
    def index
        userPlants = UserPlant.all 
        render json: userPlants, include: [:waterings, :fertilizings]
    end

    def create
        userPlant = UserPlant.create(user_id: params["userId"],plant_id: params["plant"]["id"], name: params["plant"]["name"],scientific_name: params["plant"]["scientific_name"], 
        info: params["plant"]["info"], image_url: params["plant"]["image_url"], category: params["plant"]["category"])
        render json: userPlant, include: [:waterings, :fertilizings]
    end

    def destroy
        userPlant = UserPlant.find(params[:userplant][:id])
        userPlant.delete
        render json: userPlant, include: [:waterings, :fertilizings]
    end

    def show
        userPlant = UserPlant.find(params[:id])
        render json: userPlant, include: [:waterings, :fertilizings]
    end

    def update
        userPlant = UserPlant.find(params[:userplant][:id])
        if params["wateringSchedule"]
            userPlant.update(
            name: params["userplant"]["name"],
            water_schedule: params["wateringSchedule"],
            scientific_name: params["userplant"]["scientific_name"], 
            info: params["userplant"]["info"],
            image_url: params["userplant"]["image_url"],
            category: params["userplant"]["category"])
        elsif params["fertilizingSchedule"]
            userPlant.update(
            name: params["userplant"]["name"],
            fertilizer_schedule: params["fertilizingSchedule"],
            scientific_name: params["userplant"]["scientific_name"], 
            info: params["userplant"]["info"],
            image_url: params["userplant"]["image_url"],
            category: params["userplant"]["category"])
        else
            userPlant.update(
            name: params["userplant"]["name"],
            scientific_name: params["userplant"]["scientific_name"], 
            info: params["userplant"]["info"],
            image_url: params["userplant"]["image_url"],
            category: params["userplant"]["category"])
        end
            
        render json: userPlant, include: [:waterings, :fertilizings]
    end

end
