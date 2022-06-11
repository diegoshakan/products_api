require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should belong_to(:type_user).optional(:true) }
    it { should have_many(:categories) }
    it { should have_many(:products).through(:categories) }
  end

  describe 'validations' do
    it { should have_secure_password }
    it { should validate_confirmation_of(:password) }
    it { should validate_length_of(:password).is_at_least(6).on(:create) }
  end

  describe 'uniqueness' do
    it { should validate_uniqueness_of(:username).ignoring_case_sensitivity }
    it { should validate_uniqueness_of(:email).ignoring_case_sensitivity }
  end
end
