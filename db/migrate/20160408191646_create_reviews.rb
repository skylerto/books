class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.belongs_to :book, index: true
      t.text :review
      t.string :user
      t.timestamps null: false
    end
  end
end
