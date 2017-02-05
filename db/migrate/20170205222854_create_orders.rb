class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.decimal :total_items_price
      t.decimal :shipping_price
      t.integer :status
      t.datetime :created_at
      t.datetime :closed_at
      t.integer :shipping_option_id
      t.integer :shipping_address_id
      t.integer :billing_address_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
