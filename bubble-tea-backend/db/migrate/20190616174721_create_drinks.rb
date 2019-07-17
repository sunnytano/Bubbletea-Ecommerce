class CreateDrinks < ActiveRecord::Migration[5.2]
  def change
    create_table :drinks do |t|
      t.string :drink_name
      t.string :description
      t.string :image
      t.string :likes
      t.integer :price
      t.integer :quantity
      t.belongs_to :user

      t.timestamps
    end
  end
end
