require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'associations' do
    it { should belong_to(:category).optional(:true) }
    it { should belong_to(:sub_category).optional(:true) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:price_wholesale) }
    it { should validate_presence_of(:retail_price) }
    it { should validate_presence_of(:quantity) }
  end
end
