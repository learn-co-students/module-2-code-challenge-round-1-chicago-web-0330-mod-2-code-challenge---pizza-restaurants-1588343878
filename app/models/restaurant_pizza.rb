class RestaurantPizza < ApplicationRecord
  belongs_to :restaurants, required: false
  belongs_to :pizzas, required: false
end
