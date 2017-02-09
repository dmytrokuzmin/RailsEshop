class Product < ApplicationRecord
  validates :price, numericality: {greater_than_or_equal_to: 0}, presence:true
  validates :name, presence: true
  validates :stock_quantity, presence: true, numericality: {greater_than_or_equal_to: 0}
  belongs_to :category
  belongs_to :manufacturer
  has_many :shopping_cart_items
  has_many :shopping_carts, :through => :shopping_cart_items
  has_many :order_items
  has_many :orders, :through => :order_items

  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  default_scope { where(:is_deleted => false) }

end
