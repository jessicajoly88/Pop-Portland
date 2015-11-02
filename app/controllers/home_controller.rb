class HomeController < ApplicationController
  def index
  	@acts = Act.all
  	@venues = Venue.all
  end
end
