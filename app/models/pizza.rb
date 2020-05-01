class Pizza < ApplicationRecord
    has_many :restaurants
    has_many :restaurant_pizzas, through: :restaurants
    validates :name, uniqueness: true
    validates :ingredients, uniqueness: false
end
