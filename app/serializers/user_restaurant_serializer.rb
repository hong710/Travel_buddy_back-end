class UserRestaurantSerializer < ActiveModel::Serializer
  attributes :id, :restaurant_id, :user_id
end
