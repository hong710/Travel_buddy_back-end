class ActivitiesCitySerializer < ActiveModel::Serializer
  attributes :city
  has_many :activities
end
