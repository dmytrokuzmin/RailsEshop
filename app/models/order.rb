class Order < ApplicationRecord
  enum status: [:pending, :processing, :complete, :cancelled]
  validates :total_items_price, numericality: true
  has_many :order_items
  has_many :products, :through => :order_items
  belongs_to :customer
  belongs_to :shipping_address, :class_name => 'Address', :foreign_key => :shipping_address_id
end