class FertilizingsController < ApplicationController
    def show
        fertilizing = Fertilizing.find(params[:id])
        render json: fertilizing
    end

    def delete
        fertilizing = Fertilizing.find(params[:id])
        fertilizing.delete
        render json: fertilizing
    end

    def create
        fertilizing = Fertilizing.create(user_id: params[:user_id], user_plant_id: params[:user_plant_id], schedule: params[:fertilizingSchedule])
        render json: fertilizing
    end

    def index
        fertilizings = Fertilizing.all 
        render json: fertilizings
    end
end
