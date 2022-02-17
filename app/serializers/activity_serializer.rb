class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :name, :img, :address, :phone, :review, :category, :city
end
