class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    find_pizza
  end 

  def new
    @pizza = Pizza.new
  end 

  def create
    @pizza = Pizza.new(pizza_params)
    if @pizza.valid?
      @pizza.save
      # raise params
      RestaurantPizza.create(:pizza_id => @pizza.id, :restaurant_id => r_params[:restaurants])
      redirect_to @pizza
    else 
      render :new
    end 

  end 


  private 

  def find_pizza
    @pizza = Pizza.find(params[:id])
  end 

  def pizza_params
    params.require(:pizza).permit(:name, :ingredients)
  end 

  def r_params
    params.require(:pizza).permit(:restaurants)
  end 
end
