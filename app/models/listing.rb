class Listing < ApplicationRecord
  belongs_to :group 
  has_many :comments
end
