class AddRestaurantPizza < ActiveRecord::Migration[5.1]
  def change
    create_table :RestaurantPizza do |t|
      t.integer :pizza_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
