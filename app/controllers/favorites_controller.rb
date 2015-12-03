class FavoritesController < ApplicationController
  def new
  end

  def create
    @user = User.find(params[:user_id])
    @favorite = @user.favorites.new(favorite_params)
    @favorite.user_id = @user.id
    if @favorite.save
      redirect_to user_path(current_user)
    else
      flash[:alert] = "This event is already part of your schedule!"
      redirect_to acts_path
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @favorite = @user.favorites.find(params[:id])
    @favorite.destroy
    redirect_to user_path(current_user)
  end

  private

  def favorite_params
    params.require(:favorite).permit(:event_id)
  end

end

