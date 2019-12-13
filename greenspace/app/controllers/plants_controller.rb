class PlantsController < ApplicationController

    def create

    end

    def index
        plants = Plant.all
        render json: plants
    end
end
