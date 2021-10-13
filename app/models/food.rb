class Food < ApplicationRecord
  validates :name, presence: true
  validates :user_id, presence: true

  has_many :ingredients
  belongs_to :user
end
