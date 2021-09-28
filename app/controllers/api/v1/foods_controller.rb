class Api::V1::FoodsController < ApplicationController
  before_action :set_food, only: %i[show update destroy]

  # GET /foods
  def index
    @foods = Food.all

    json_response(@foods)
  end

  # GET /foods/1
  def show
    json_response(@food)
  end

  # POST /foods
  def create
    @food = Food.create!(food_params)
  end

  # PATCH/PUT /foods/1
  def update
    @food.update(food_params)
    head :no_content
  end

  # DELETE /foods/1
  def destroy
    @food.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_food
    @food = Food.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def food_params
    params.permit(:name, :user_id)
  end
end
