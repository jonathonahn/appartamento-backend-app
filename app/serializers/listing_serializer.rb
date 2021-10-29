class ListingSerializer < ActiveModel::Serializer
  attributes :id, :address, :group_id, :status, :url, :comments
  belongs_to :group
  has_many :comments
end
