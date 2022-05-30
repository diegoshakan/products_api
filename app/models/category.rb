class Category < ApplicationRecord
  has_many :products

  validates :name, uniqueness: { case_sensitive: true }
end
