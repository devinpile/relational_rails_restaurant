class CreateDish < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :calories
      t.boolean :vegan
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
