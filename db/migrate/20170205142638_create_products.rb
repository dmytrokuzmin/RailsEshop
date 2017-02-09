class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :sku_number
      t.boolean :is_deleted, :default => false
      t.integer :stock_quantity
      t.integer :category_id
      t.integer :manufacturer_id

      t.timestamps
    end
  end
end
