class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :image
  has_many :listings
  has_many :users
end
