class Product < ApplicationRecord
  belongs_to :category
  belongs_to :manufacturer
  has_many :shopping_cart_items
  has_many :shopping_carts, :through => :shopping_cart_items
  has_many :order_items
  has_many :orders, :through => :order_items

  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
