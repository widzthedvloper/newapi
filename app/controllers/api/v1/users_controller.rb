class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: %i[show update destroy]

  # GET /log/
  def log
    @user = User.find_by(email: user_params[:email])
    json_response(@user)
  end

  # GET /users
  def index
    @users = User.all

    json_response(@users)
  end

  # GET /users/1
  def show
    json_response(@user)
  end

  # POST /users
  def create
    @user = User.create!(user_params)
    json_response(@user, :created)
  end

  # PATCH/PUT /users/1
  def update
    @user.update(user_params)
    head :no_content
  end

  # DELETE /users/1
  def destroy
    @user.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def user_params
    params.permit(:email)
  end
end
