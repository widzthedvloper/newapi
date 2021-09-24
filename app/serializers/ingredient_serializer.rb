class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :food_id
  belongs_to :foods
end
