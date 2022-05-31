class Product < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :user

  validates :name, uniqueness: { case_sensitive: true }
  validates :description, :price, :quantity, presence: true
end
