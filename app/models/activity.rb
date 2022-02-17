class Activity < ApplicationRecord
    has_many :user_activities
    has_many :users, through: :user_restaurants
    validates :name, uniqueness: {case_sensitive:false}
end
