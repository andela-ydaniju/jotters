class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      @user = current_user
      redirect_to @user
    else
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    @jotters = current_user.jotters
  end

  private

  def user_params
    params.require(:user).permit(
      :name,
      :password,
      :password_confirmation
    )
  end
end
