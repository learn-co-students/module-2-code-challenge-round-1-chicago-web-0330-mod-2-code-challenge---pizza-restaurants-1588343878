class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show 
    @pizza = Pizza.find(params[:id])
  end 

  def new
    @pizza = Pizza.new
  end 

  def create
    @pizza = Pizza.new(pizza_params)
    @pizza.restaurants << Restaurant.find(params[:pizza][:restaurants])

    if @pizza.save 
      redirect_to @pizza 
    else 
      render 'new'
    end 
  end 

  private 

  def pizza_params
    params.require(:pizza).permit(:name, :ingredients)
  end 
end
