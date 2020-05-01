class CreateRestaurantPizza < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_pizzas do |t|
      t.integer :pizza_id
      t.integer :restaurant_id
    end
  end
end
