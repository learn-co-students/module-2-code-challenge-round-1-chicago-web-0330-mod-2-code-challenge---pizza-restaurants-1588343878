class Restaurant < ApplicationRecord
    has_many :pizzas
    has_many :restaurant_pizzas, through: :pizzas
end
