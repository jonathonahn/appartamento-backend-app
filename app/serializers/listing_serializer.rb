class ListingSerializer < ActiveModel::Serializer
  attributes :id, :address, :group_id, :status, :url, :image, :bed, :bath, :squarefeet
  belongs_to :group
  has_many :comments
end
