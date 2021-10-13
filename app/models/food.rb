class Food < ApplicationRecord
  validates :name, presence: true, length: { maximum:30 }
  validates :user_id, presence: true

  has_many :ingredients
  belongs_to :user
end
