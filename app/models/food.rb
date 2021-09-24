class Food < ApplicationRecord
  has_many :ingredients
  belongs_to :user
end
