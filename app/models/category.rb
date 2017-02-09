class Category < ApplicationRecord
  validates :name, presence: true
  has_many :products
  default_scope { where(:is_deleted => false) }
end
