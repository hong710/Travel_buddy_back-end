class CreateUserRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :user_restaurants do |t|
      t.references :user
      t.references :restaurant
      t.timestamps
    end
  end
end
