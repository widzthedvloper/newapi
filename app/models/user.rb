class User < ApplicationRecord
  validates :email, presence: true

  has_many :foods
  has_many :ingredients
end
