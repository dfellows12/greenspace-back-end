class WateringsController < ApplicationController

    def show
        watering = Watering.find(params[:id])
        render json: watering
    end

    def delete
        watering = Watering.find(params[:id])
        watering.delete
        render json: watering
    end

    def create
        watering = Watering.create(user_id: params[:user_id], user_plant_id: params[:user_plant_id], schedule: params[:wateringSchedule])
        render json: watering
    end

    def index
        waterings = Watering.all 
        render json: waterings
    end
end
