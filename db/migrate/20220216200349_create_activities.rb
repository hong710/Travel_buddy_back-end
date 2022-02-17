class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :name 
      t.string :img
      t.string :address
      t.string :phone
      t.string :review
      t.string :category
      t.string :city
      t.string :note
      t.timestamps
    end
  end
end
