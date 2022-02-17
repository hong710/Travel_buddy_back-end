class ActivitiesController < ApplicationController

    def create
        activity = Activity.create!(r_params)
        render json: activity, status: :created
    end

    private

    def r_params
        params.permit(:name, :address, :img, :phone, :review, :category)
    end

    def invalid_record_res (invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
