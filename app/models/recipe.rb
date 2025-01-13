class Recipe < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :categories, through: :bookmarks

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :rating, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
end
