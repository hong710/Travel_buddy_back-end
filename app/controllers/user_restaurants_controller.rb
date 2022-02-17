class UserRestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :invalid_record_res
    
    
    
    def create
        user_restaurant = UserRestaurant.create!(rp_param)
        render json: user_restaurant, status: :created
    end

    private

    def rp_param
        params.permit(:restaurant_id, :user_id)
    end

    def invalid_record_res (invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end


end
