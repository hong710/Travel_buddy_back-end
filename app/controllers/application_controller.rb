class ApplicationController < ActionController::API
    before_action :authorized

    def encode_token(payload)
        JWT.encode(payload, "my_secret_key")
    end

    def auth_header
        #Authorization: Bearer token.....
        request.headers["Authorization"]
    end

    def decode_token
        if auth_header
            token = auth_header.split(" ")[1]
            begin
                JWT.decode(token, "my_secret_key", true, algorithm: "HS256")
            rescue
                nil
            end
        end
    end

    def current_user
        if decode_token
            user_id = decode_token[0]['user_id']
            @user = User.find_by(id: user_id)
        end
    end

    def logged_in?
        !!current_user
    end

    def authorized
        if logged_in?
            true
        else
            render json: {messages: "please log in"}, status: :unauthorized
        end
    end
end
