class Product < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :sub_category, optional: true

  has_many :product_variations

  validates :name, :description, :price_wholesale, :retail_price, :quantity, presence: true
end
