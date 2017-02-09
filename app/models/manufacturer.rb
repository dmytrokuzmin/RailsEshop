class Manufacturer < ApplicationRecord
  validates :name, presence: true
  has_many :products
  default_scope { where(:is_deleted => false) }

  def deleted?
    self.is_deleted
  end
end
