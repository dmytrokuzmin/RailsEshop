class CreateShippingOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :shipping_options do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.boolean :is_local_pickup
      t.boolean :is_deleted

      t.timestamps
    end
  end
end
