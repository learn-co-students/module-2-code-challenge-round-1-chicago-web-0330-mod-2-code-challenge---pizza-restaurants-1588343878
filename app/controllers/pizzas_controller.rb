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
    @pizza = Pizza.create(name: params[:pizza][:name], ingredients: params[:pizza][:ingredients])
    redirect_to pizza_path(@pizza)
  end

end
