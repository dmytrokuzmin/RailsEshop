class ShoppingCart < ApplicationRecord
  has_many :products, :through => :shopping_cart_items
end
