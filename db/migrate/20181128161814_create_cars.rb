class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.integer :category, default: 0
      t.string :model
      t.string :make
      t.integer :year_of_manufacture
      t.float :price
      t.text :description
      t.string :creator_email

      t.timestamps
    end
  end
end
