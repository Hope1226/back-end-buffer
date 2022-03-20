class UsersController < ApplicationController
  before_action :set_user, only: %i[show]

  def show
    render json: @user
  end

  def create
    @new_user = User.new(user_params)

    if @new_user.save
      render json: @new_user, status: :created, location: @user
    else
      render json: @new_user.errors, status: :unprocessable_entity
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.fetch(:user, {})
  end
end
