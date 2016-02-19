class JottersController < ApplicationController
  def index
  end

  def new
    @jotter = current_user.jotters.new
  end

  def create
    @jotter = current_user.jotters.new(jotter_params)
    if @jotter.save
      redirect_to current_user
    else
      redirect_to new_jotter_path
    end
  end

  def edit
    @jotter = Jotter.find_by(id: params[:id]) 
  end

  def update
    @jotter = Jotter.find_by(id: params[:id])
    if @jotter.update_attributes(update_params)
      redirect_to current_user
    else
      redirect_to edit_jotter_path
    end
  end

  def destroy
    @jotter = Jotter.find_by(id: params[:id])
    @jotter.destroy
    redirect_to current_user
  end

  private

  def jotter_params
    params.require(:jotter).permit(:title, :body, user_id: current_user.id)
  end

  def update_params
    params.require(:jotter).permit(:title, :body)
  end
end
