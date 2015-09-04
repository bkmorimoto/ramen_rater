class CreatePost < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :ramen
      t.references :user
      t.integer :rating
      t.text :description

      t.timestamps
    end
  end
end
