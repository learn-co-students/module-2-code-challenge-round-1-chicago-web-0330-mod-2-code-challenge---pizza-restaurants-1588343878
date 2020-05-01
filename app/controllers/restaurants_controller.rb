class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show, :edit, :update]
  
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def edit
    @pizzas = Pizza.all
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to @restaurant
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, pizza_ids:[])
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
