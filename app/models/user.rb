class User < ApplicationRecord
    has_secure_password
    has_many :user_restaurants
    has_many :restaurants, through: :user_restaurants

    has_many :user_activities
    has_many :activities, through: :user_activities

    validates :username, uniqueness: {case_sensitive:false}

    def authenticate(password)
        if BCrypt::Password.new(self.password_digest) == password
            self
        else
            false
        end
    end

end
