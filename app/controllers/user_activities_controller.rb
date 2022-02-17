class UserActivitiesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :invalid_record_res
    def create
        user_activity = UserActivity.create!(uc_param)
        render json: user_activity, status: :created
    end


    private

    def uc_param
        params.permit(:activity_id, :user_id)
    end

    def invalid_record_res (invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
    
end
