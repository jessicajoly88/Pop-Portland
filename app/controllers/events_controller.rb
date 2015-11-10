class EventsController < ApplicationController
  def index
    @events= Event.order("date": :asc, "time_period": :asc)

  end
end
