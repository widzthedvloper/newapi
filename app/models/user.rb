class User < ApplicationRecord
  has_many :foods
  has_many :ingredients
end
