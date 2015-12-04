class HomeController < ApplicationController
  def index
  	@acts = Act.all
  end
end
