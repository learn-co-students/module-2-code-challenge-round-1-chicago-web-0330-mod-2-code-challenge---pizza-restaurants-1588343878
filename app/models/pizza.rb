class Pizza < ApplicationRecord
    has_many :restaurants, through: :restaurantpizzas
    validates :name, comfirmation: true
    validates :ingredients, comfirmation: true
    validates_associated :restaurants 
end
