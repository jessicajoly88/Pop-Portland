class FavoritesController < ApplicationController
  def new

  end

  def create
    # @event = Event.find(params[:event_id])
    @user = User.find(params[:user_id])
    @favorite = @user.favorites.new(favorite_params)

    # @favorite = Favorite.new
    # @favorite.current_user = @user
    if @favorite.save
      redirect_to user_path(current_user)
    else
      render :new
  end

  private

    favorite_params
      params.require(:favorite).permit(:event_id)
    end
end




