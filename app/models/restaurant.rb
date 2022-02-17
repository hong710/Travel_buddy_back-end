class Restaurant < ApplicationRecord
    has_many :user_restaurants
    has_many :users, through: :user_restaurants
    validates :name, uniqueness: {case_sensitive:false}
end
