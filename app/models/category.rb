class Category < ApplicationRecord
  belongs_to :user

  has_many :products

  validates :name, uniqueness: { case_sensitive: true }
end
