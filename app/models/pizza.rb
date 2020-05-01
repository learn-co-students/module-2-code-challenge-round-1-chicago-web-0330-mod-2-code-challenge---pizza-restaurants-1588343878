class Pizza < ApplicationRecord
    validates_presence_of :name, :ingredients
    has_many :restaurant_pizzas
    has_many :restaurants, through: :restaurant_pizzas
end


# Add validations to the Pizza model so that each pizza must have:

# - a name
# - ingredients

# Add error handling to the Pizza create action. Show any validation errors on the Pizza creation form if the user attempts to save an invalid Pizza.
