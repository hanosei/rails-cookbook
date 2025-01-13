class Bookmark < ApplicationRecord
  belongs_to :recipe
  belongs_to :category

  validates :comment, presence: true
end
