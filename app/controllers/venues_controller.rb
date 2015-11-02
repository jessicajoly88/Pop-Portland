class VenuesController < ApplicationController
  def index
  	@venues = Venue.all
  end

  def new
    @venue = Venue.new
  end

  def show 
  	@venue = Venue.find(params[:id])
  end 

  def create
  	@venue = Venue.new(venue_params)
  	  if @venue.save
  	    respond_to do |format|
  	      format.html { redirect_to acts_path }
  	      format.js
  	  end
  	  else
  	  	render :new
  	  end
  end 

private
  def venue_params
    params.require(:venue).permit(:name, :address, :description)
  end


end