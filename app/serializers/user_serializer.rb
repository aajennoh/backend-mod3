class UserSerializer < ActiveModel::Serializer
  has_many :photos
  has_many :locations
  attributes :id, :name, :email
end
