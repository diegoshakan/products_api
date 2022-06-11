class ProductVariation < ApplicationRecord
  belongs_to :product, optional: true
  belongs_to :color, optional: true
  belongs_to :size, optional: true

  enum situation: { active: "active", inactive: "inactive"}

  has_many_attached :images
end
