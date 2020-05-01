class Restaurant < ApplicationRecord
  has_many :pizzas
  has_many :restaurant_pizzas, through: :pizzas

  def my_pizzas
    pizza_list = RestaurantPizza.find_by(restaurant_id: self.id)
    pizza_names = pizza_list.each do |pizza|
      pizza_names = Pizza.find_by(pizza_id: pizza.pizza_id)
    end
    pizza_names
  end
  
end
