class ActivitiesController < ApplicationController

    def create
        activity = Activity.create!(r_params)
        render json: activity, status: :created
    end

    def name
        activity = Activity.find_by(location_id:params[:location_id])
        render json: activity, status: :ok
    end


    def destroy
        activity = Activity.find(params[:id])
        activity.user_activities.destroy_all
        activity.destroy
        head :no_content
    end

    private

    def r_params
        params.permit(:name, :address, :img, :phone, :review, :category, :city, :location_id)
    end

    def invalid_record_res (invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
