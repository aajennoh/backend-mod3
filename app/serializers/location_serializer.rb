class LocationSerializer < ActiveModel::Serializer
  belongs_to :user
  has_many :photos
  attributes :id, :latitude, :longitude
end
