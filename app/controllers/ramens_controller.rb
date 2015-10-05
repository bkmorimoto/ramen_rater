class RamensController < ApplicationController

  def index
    @ramens = Ramen.all
    @restaurants = Restaurant.all
    @ramen = Ramen.new
  end

  def create
    ramen = Ramen.create(ramen_params)

    if request.xhr?
      render partial: 'ramen', locals: {ramen: ramen}, layout: false
    else
      redirect_to ramens_path
    end
  end

  private

  def ramen_params
    params.require(:ramen).permit(:name, :description, :restaurant_id, :price)
  end

end
