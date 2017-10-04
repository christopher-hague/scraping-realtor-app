class Api::V1::UsersController < ApplicationController
  # GET /api/v1/users
  def index
    users = User.all
    render json: users
  end

  def create
    user = User.create(user_params)
    render json: user
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
    user = User.find(params[:id])
    users = User.all
    user.update(user_params)
    render json: users
  end

  def destroy
    user = User.find(params[:id])
    users = User.all
    user.destroy
    render json: users
  end

  private

  def user_params
    params.permit(:username, :password)
  end
end
