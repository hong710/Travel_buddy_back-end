class Api::V1::UsersController < ApplicationController
    

    def create
        user = User.create(user_params)
        if user.valid?
            render json: user, serializer: UserSerializer, status: :created
        else
            render json: {error: "Could not create user!"}, status: :unprocessable_entity
        end        
    end


    
    private

    def user_params
        params.require(:user).permit(:username, :password, :email, :f_name, :l_name)
    end



end
