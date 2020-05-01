class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    find_restaurant
    get_pizzas
  end 


  private 

  def find_restaurant
    @rest = Restaurant.find(params[:id])
  end 

  def get_pizzas
    @rest = Restaurant.find(params[:id])
    @rest.pizza_ids
  end 
end
