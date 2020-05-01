class Pizza < ApplicationRecord
  belongs_to :resturant
  
  accepts_nested_attributes_for :ingredients
  # Each Restaurant can have many Pizzas. 
  # Each Pizza can belong to multiple Restaurants.

    # Pizzas should not have the same name.
    validates :name, uniqueness: true, message: "Must be UNIQUE!"
    validates :name, acceptance: { message: 'Must have name' }
    validates :ingredients, acceptance: { message: 'Must have ingredients' }

end
