class Product < ApplicationRecord
  belongs_to :category, optional: true
end
