class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show 
    @restaurant = Restaurant.find(params[:id])
  end 

  def edit
    @restaurant = Restaurant.find(params[:id])
  end 

  def update 
    @restaurant = Restaurant.find(params[:id])
    params[:restaurant][:pizzas].shift

    params[:restaurant][:pizzas].each do |pizza_id|
      @restaurant.pizzas << Pizza.find(pizza_id)
    end 

    if @restaurant.update(rest_params)
      redirect_to @restaurant
    else 
      render 'edit'
    end 
  end
  
  def rest_params
    params.require(:restaurant).permit(:name, :address)
  end 
end
