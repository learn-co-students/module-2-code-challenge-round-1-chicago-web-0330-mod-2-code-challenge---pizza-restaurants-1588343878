class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show 
    set_restaurant
  end

  def edit
    set_restaurant 
  end 

  def update 
    set_restaurant 
    @restaurant.update(restaurant_params)
    redirect_to @restaurant 
  end 
  








  private

      def set_restaurant 
        @restaurant = Restaurant.find(params[:id])
      end 

      def restaurant_params 
        params.require(:restaurant).permit(:name, :address)
      end

end
