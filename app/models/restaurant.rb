class Restaurant < ApplicationRecord
  has_many :pizzas, through: :restaurantpizzas
end
