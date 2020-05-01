class Pizza < ApplicationRecord
  has_many :restaurants
  has_many :restaurant_pizzas, through: :restaurants

  validates_presence_of :name
  validates_presence_of :ingredients
  validates_uniqueness_of :name
  
end
