class Recipe < ApplicationRecord
  belongs_to :user, optional: true
  validates :title, presence: true
  validates :extendedIngredients, presence: true
  validates :readyInMinutes, presence: true
  validates :servings, presence: true
end
