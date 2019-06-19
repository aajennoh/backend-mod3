class LocationSerializer < ActiveModel::Serializer
  belongs_to :user
  has_many :photos
  attributes :id, :name, :latitude, :longitude
end
