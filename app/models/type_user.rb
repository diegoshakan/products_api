class TypeUser < ApplicationRecord

  enum situation: { active: "active", inactive: "inactive"}

  validates :label, presence: true
end
