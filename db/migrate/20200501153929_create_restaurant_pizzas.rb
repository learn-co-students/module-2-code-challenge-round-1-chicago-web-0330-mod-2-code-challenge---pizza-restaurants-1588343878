class CreateRestaurantPizzas < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_pizzas do |t|
      t.belongs_to :pizza
      t.belongs_to :restaurant
      t.timestamps
    end
  end
end
