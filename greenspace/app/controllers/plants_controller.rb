class PlantsController < ApplicationController

    def create
        plant = Plant.create(name: params["info"]["name"], scientific_name: params["info"]["scientific_name"], water_schedule: params["info"]["water_schedule"], fertilizer_schedule: params["info"]["fertilizer_schedule"], info: params["info"]["plant_info"], category: params["info"]["category"])
        render json: plant
    end

    def index
        plants = Plant.all
        render json: plants
    end

    def update
        plant = Plant.find(params[:id])
        plant.update(image: params[:image])
        image_url = rails_blob_path(plant.image)
        render json: { plant: plant, image_url: image_url} 
    end
end
