class CreateBookAnalytics < ActiveRecord::Migration
  def change
    create_table :book_analytics do |t|
      t.belongs_to :book, index: true
      t.integer :views, default: 0
      t.integer :sold, default: 0
      t.timestamps null: false
    end
  end
end
