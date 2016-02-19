class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    if user && user.authenticate(params[:session][:password])
      session[:current_user_id] = user.id
      redirect_to current_user
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:current_user_id] = nil
    current_user = nil
    redirect_to root_path
  end
end
