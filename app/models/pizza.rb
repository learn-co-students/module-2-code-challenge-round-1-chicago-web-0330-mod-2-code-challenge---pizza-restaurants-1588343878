class Pizza < ActiveRecord::Base
    has_many :restaurant_pizzas
    has_many :restaurants, through: :restaurant_pizza
end
