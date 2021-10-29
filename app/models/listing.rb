class Listing < ApplicationRecord
  validates :address, presence: true
  belongs_to :group 
  has_many :comments
end
