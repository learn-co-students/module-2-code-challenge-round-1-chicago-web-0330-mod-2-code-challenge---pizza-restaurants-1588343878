class Pizza < ApplicationRecord
  has_many :restaurant_pizza
  has_many :restaurants, through: :restaurant_pizza

  validates_presence_of :name, :ingredients 
  validates_uniqueness_of :name
end
