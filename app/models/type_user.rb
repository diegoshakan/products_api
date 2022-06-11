class TypeUser < ApplicationRecord
  has_many :users

  enum situation: { active: "active", inactive: "inactive"}

  validates :label, presence: true
end
