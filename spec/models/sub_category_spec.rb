require 'rails_helper'

RSpec.describe SubCategory, type: :model do
  describe 'associations' do
    it { should belong_to(:category) }
    # it { should have_many(:products).dependent(:destroy) }
  end

  describe 'validations' do
    it { should validate_presence_of(:label) }
  end
end
