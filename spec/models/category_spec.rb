require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'associations' do
    it { should have_many(:products).dependent(:destroy) }
  end

  describe 'validations' do
    it { should validate_presence_of(:label) }
  end
end
