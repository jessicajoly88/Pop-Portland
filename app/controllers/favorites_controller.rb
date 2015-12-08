class FavoritesController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @favorite = @user.favorites.new(favorite_params)
    @favorite.user_id = @user.id
    if @favorite.save
      redirect_to user_path(current_user), :notice => "You're going to this event!"
    else
      flash[:alert] = "This event has already been added to your schedule!"
      redirect_to user_path(current_user)
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

