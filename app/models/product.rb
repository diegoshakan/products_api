class Product < ApplicationRecord
  belongs_to :category, optional: true

  validates :name, uniqueness: { case_sensitive: true }
  validates :description, :price, :quantity, presence: true
end
