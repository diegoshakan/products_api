class Category < ApplicationRecord
  has_many :products, dependent: :destroy

  enum situation: { active: "active", inactive: "inactive"}

  validates :label, presence: :true
end
