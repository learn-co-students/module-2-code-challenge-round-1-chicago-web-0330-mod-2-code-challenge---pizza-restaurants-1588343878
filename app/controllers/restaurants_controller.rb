class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
    @pizzas = Pizza.all
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @pizzas = Pizza.all
    @restaurant = Restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end

end
