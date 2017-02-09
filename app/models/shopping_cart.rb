class ShoppingCart < ApplicationRecord
  has_many :shopping_cart_items
  has_many :products, :through => :shopping_cart_items
  accepts_nested_attributes_for :shopping_cart_items

  def add_item(product_id)
    item = shopping_cart_items.where('product_id = ?', product_id).first
    if item != nil
      q = item.read_attribute(:quantity)
      item.update_attribute(:quantity, q + 1)
      save
    else
      product = Product.find(product_id)
      shopping_cart_items.create(:product_id => product_id, :quantity => 1)
    end
  end

  def calculate_total
    sum = 0
    shopping_cart_items.each do |item|
      sum += item.quantity * item.product.price
    end
    sum
  end
end