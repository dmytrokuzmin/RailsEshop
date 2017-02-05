class CreateShoppingCartItems < ActiveRecord::Migration[5.0]
  def change
    create_table :shopping_cart_items do |t|
      t.integer :quantity
      t.integer :cart_id
      t.integer :product_id

      t.timestamps
    end
  end
end
