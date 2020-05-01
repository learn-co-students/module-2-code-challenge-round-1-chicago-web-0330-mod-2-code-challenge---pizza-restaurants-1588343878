class RestaurantPizza < ActiveRecord::Base
    belongs_to :pizza
    belongs_to :restaurant
end