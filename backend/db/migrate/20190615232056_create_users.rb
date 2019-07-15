class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.belongs_to :review
      t.belongs_to :drink
      
      t.timestamps
    end
  end
end
