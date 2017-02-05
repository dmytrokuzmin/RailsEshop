class Product < ApplicationRecord
  belongs_to :category
  belongs_to :manufacturer
  has_many :orders, :through => :order_items

end
