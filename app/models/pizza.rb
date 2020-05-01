class Pizza < ApplicationRecord
  has_many :restaurant_pizzas
  has_many :restaurants, through: :restaurant_pizzas
  validates_presence_of :name
  validates_presence_of :ingredients
  validates_uniqueness_of :name
end
