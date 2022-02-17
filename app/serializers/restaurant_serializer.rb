class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :img, :address, :phone, :review
end
