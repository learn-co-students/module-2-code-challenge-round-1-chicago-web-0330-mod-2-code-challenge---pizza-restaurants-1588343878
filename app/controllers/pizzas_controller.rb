class PizzasController < ApplicationController

  def index
    @pizzas = Pizza.all
  end

    def new
    @pizza = Pizza.new
  end

  def create
    @pizza = Pizza.create(post_params)
    redirect_to pizza
  end

  def show
    @pizzas= Pizza.find(params[:id])
  end

  # end
  private
  def post_params
    params.require(:pizza).permit(:name, :ingredients)
    
end
