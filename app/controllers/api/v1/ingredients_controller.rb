class Api::V1::IngredientsController < ApplicationController
  before_action :set_ingredient, only: %i[show update destroy]

  # GET /ingredients
  def index
    @ingredients = Ingredient.all

    json_response(@ingredients)
  end

  # GET /ingredients/1
  def show
    json_response(@ingredient)
  end

  # POST /ingredients
  def create
    @ingredient = Ingredient.create!(ingredient_params)
    json_response(@ingredient, :created)
  end

  # PATCH/PUT /ingredients/1
  def update
    @ingredient.update(ingredient_params)
    head :no_content
  end

  # DELETE /ingredients/1
  def destroy
    @ingredient.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def ingredient_params
    params.permit(:name, :calories, :food_id)
  end
end
