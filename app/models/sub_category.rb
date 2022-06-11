class SubCategory < ApplicationRecord
  belongs_to :category
  has_many :products, dependent: :destroy

  enum situation: { active: "active", inactive: "inactive"}

  validates :label, presence: :true
end
