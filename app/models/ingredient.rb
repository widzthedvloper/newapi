class Ingredient < ApplicationRecord
  validates :name, presence: true
  validates :calories, presence: true
  validates :user_id, presence: true
  validates :food_id, presence: true
  belongs_to :food
  belongs_to :user
end
