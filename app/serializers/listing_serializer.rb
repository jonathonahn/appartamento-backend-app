class ListingSerializer < ActiveModel::Serializer
  attributes :id, :address, :group_id, :status, :url, :image, :beds, :baths, :squarefeet, :rent
  belongs_to :group
  has_many :comments
end
