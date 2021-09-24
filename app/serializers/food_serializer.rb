class FoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id
  has_many :ingredients
  belongs_to :user
end
