class ShoppingCartItem < ApplicationRecord
  belongs_to :order
  belongs_to :shopping_cart
end
