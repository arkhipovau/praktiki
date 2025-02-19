class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  before_action :authorize_destroy, only: [:destroy]

  def index
    if params[:role].present?
      @users = User.where(role: params[:role])
    else
      @users = User.all
    end
    render json: @users
  end

  def show
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def update
    if current_user&.moderator? # Только модератор может менять роль
      if @user.update(user_params)
        render json: @user
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    else
      if @user.update(user_params.except(:role))
        render json: @user
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end
  end

  def destroy
    @user.destroy
    head :no_content
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :password, :role)
  end

  def authorize_destroy
    unless current_user&.moderator?
      render json: { error: "Access denied" }, status: :forbidden
    end
  end
end
