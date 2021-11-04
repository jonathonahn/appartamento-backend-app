class Group < ApplicationRecord
  validates :name, presence: true
  has_many :users, dependent: :destroy
  has_many :listings, dependent: :destroy
end
