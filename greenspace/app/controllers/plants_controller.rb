class PlantsController < ApplicationController

    def create

    end

    def index
        byebug
        plants = Plant.all
        render json: plants
    end
end
