class Recipe < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :categories, through: :bookmarks

  validates :name, :description, :image_url, :rating, presence: true
end
