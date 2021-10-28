class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :food_id, :user_id
  belongs_to :food
  belongs_to :user
end
