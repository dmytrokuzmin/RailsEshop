class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.boolean :is_deleted, :default => false

      t.timestamps
    end
  end
end
