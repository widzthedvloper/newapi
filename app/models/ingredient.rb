class Ingredient < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30 }
  validates :calories, presence: true, numericality: true
  validates :user_id, presence: true
  validates :food_id, presence: true
  belongs_to :food
  belongs_to :user
end
