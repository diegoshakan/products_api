class Product < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :user

  validates :name, :description, :price, :quantity, presence: true
end
