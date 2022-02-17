class RestaurantsController < ApplicationController

    rescue_from ActiveRecord::RecordInvalid, with: :invalid_record_res
    
    def create
        restaurant = Restaurant.create!(r_params)
        render json: restaurant, status: :created
    end

    private

    def r_params
        params.permit(:name, :address, :img, :phone, :review)
    end

    def invalid_record_res (invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
