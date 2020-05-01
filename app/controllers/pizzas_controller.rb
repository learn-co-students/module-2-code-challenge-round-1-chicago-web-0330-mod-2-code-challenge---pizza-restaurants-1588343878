class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizzas = Pizza.find_by_id(params[:id])
  end

  def new
    @pizzas = Pizza.new
  end

  def update
  end

  def create
    @pizzas = Pizza.new(pizza_params)
    if @pizzas.valid?
       @pizzas.save
          redirect to pizza_path(@pizzas)
    else
          redirect to new_pizza_path
    end
  end

  private

  def pizza_params
    params.require(:pizza).permit(
      :name,
      :ingredients,
      :restaurant_id
    )
  end
end
