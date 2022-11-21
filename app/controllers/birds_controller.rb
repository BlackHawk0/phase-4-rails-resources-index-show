class BirdsController < ApplicationController

    def index
        render json: Bird.all, status: :ok
    end

    def show 
        bird =  Bird.find_by(id: params[:id])

        # if present
        if bird
            render json: bird, status: :ok
        else 
            render json: {error: "Bird not found"}, status: :not_found
        end
    end
end
