class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title,  null: false
      t.text :description,  null: false
      t.decimal :price, :precision => 8, :scale => 2,  null: false
      t.string :author,  null: false
      t.integer :isbn,  null: false
      t.timestamps null: false
    end
  end
end
