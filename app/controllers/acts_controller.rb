class ActsController < ApplicationController
  def new
  	@act = Act.new
  end

  def show
  	@act = Act.find(params[:id])
  end

  def index
    @acts = Act.all
  end

private
  def act_params
    params.require(:act).permit(:name, :genre, :description, :image, :website)
  end
end
