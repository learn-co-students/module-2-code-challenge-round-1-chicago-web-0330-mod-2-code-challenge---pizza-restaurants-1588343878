class PizzasController < ApplicationController
  before_action :find_pizza, only: [:show]
  
  def index
    @pizzas = Pizza.all
  end

  def show
  end

  def new
    @pizza = Pizza.new(flash[:pizza_attributes])
    @restaurants = Restaurant.all
  end

  def create
    @pizza = Pizza.new(pizza_params)
    if @pizza.save
      redirect_to @pizza
    else
      flash[:errors] = @pizza.errors.full_messages
      flash[:pizza_attributes] = pizza_params
      redirect_to new_pizza_path
    end
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :ingredients, :restaurant_ids)
  end

  def find_pizza
    @pizza = Pizza.find(params[:id])
  end

end
