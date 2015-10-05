class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    @restaurant = Restaurant.new
  end

  def create
    restaurant = Restaurant.create(restaurant_params)

    if request.xhr?
      render partial: 'restaurant', locals: {restaurant: restaurant}, layout: false
    else
      redirect_to restaurants_path
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
