class Bookmark < ApplicationRecord
  belongs_to :recipe
  belongs_to :category

  validates :recipe, presence: true
  validates :category, presence: true
  validates :comment, presence: true, length: { minimum: 6 }
  validates :recipe_id, uniqueness: { scope: :category_id, message: "has already been bookmarked in this category" }
end
