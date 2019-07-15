class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :content
      #t.string :user
      t.belongs_to :drink
      t.belongs_to :user

      t.timestamps
    end
  end
end
