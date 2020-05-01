class Restaurant < ApplicationRecord
  has_many :pizzas

  #validates :name, presence: true    #this was just attempt at fixing seed issue
end
