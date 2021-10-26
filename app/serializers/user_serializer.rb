class UserSerializer < ActiveModel::Serializer
  attributes :id,  :name, :email, :image 
  belongs_to :group
end
