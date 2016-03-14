class FavoritesController < ApplicationController
before_action:find_id

  def find_id
    @user = User.find(params[:user_id])
  end

  def create
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
    @favorite = @user.favorites.find(params[:id])
    @favorite.destroy
    redirect_to user_path(current_user)
  end

  private
  def favorite_params
    params.require(:favorite).permit(:event_id)
  end
end
