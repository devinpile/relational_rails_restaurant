class CreateRestaurant < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :rating
      t.boolean :open

      t.timestamps
    end
  end
end
