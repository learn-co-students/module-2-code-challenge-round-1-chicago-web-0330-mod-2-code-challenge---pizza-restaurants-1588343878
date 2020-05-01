class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def new 
    @pizza = Pizza.new 
  end 

  def show 
    set_pizza 
  end

  def edit 
    set_pizza
  end 

  def update
    @pizza = Pizza.update(pizza_params)
    redirect_to @pizza
  end

  def create
    @pizza = Pizza.create(pizza_params)
    redirect_to @pizza
  end

  private
    def set_pizza 
      @pizza = Pizza.find(params[:id])
    end 

    def pizza_params 
      params.require(:pizza).permit(:ingredients, :name)
    end

end
