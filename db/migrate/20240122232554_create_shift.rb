class CreateShift < ActiveRecord::Migration[7.0]
  def change
    create_table :shifts do |t|
      t.string :type
      t.integer :hours
      t.boolean :full_staff

      t.timestamps
    end
  end
end
