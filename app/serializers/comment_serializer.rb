class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :listing_id, :user_id
  belongs_to :user 
  belongs_to :listing
end
