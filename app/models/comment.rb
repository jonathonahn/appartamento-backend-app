class Comment < ApplicationRecord
belongs_to :listing 
belongs_to :user
validates :text, presence: true, length: { maximum: 255 }
end
