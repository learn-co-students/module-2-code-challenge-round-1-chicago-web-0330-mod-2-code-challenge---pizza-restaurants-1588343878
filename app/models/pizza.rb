class Pizza < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :restaurants, through: :restaurant_pizzas

    # validations
    validates_presence_of :name, :ingredients
    validates_uniqueness_of :name

    def restaurant_count
        self.restaurants.count
    end

end
