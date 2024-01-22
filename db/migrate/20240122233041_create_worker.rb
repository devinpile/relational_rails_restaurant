class CreateWorker < ActiveRecord::Migration[7.0]
  def change
    create_table :workers do |t|
      t.string :position
      t.integer :years_exp
      t.boolean :working
      t.references :shift, foreign_key: true

      t.timestamps
    end
  end
end
