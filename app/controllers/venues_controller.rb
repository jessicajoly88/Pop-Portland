class VenuesController < ApplicationController
  def index
  	@venues = Venue.all
  end

  def show
  	@venue = Venue.find(params[:id])
    # @location = Gmaps4rails.build_markers(@venue) do |marker|
    #   marker.lat =  @venue.latitude
    #   marker.lng =  @venue.longitude
    # end
    # binding.pry
  end


private
  def venue_params
    params.require(:venue).permit(:name, :address, :description)
  end
end
