class CreateRamens < ActiveRecord::Migration
  def change
    create_table :ramens do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.references :restaurant
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
