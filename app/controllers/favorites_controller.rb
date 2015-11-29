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
      render :new
    end
  end

  private

  def favorite_params
    params.require(:favorite).permit(:event_id)
  end
end




