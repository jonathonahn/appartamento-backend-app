class ListingSerializer < ActiveModel::Serializer
  attributes :id, :address, :group_id, :status, :url, :image, :beds, :baths, :squarefeet
  belongs_to :group
  has_many :comments
end
