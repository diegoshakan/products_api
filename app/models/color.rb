class Color < ApplicationRecord
  has_many :product_variations

  enum situation: { active: "active", inactive: "inactive"}

  validates :label, presence: true
end
