class CreateSession < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.referecnes :ramen
      t.references :user
      t.integer :rating
      t.text :description

      t.timestamps
    end
  end
end
