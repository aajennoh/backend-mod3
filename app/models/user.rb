class User < ApplicationRecord
  has_many :user_contacts
  has_many :contacts, through: :user_contacts, class_name: "User"
  has_many :photos
  has_many :locations
end
