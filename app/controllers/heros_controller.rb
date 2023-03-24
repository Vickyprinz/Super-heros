class HerosController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index 
        heros = Hero.all 
        render json: heros, status: :created
    end
end
