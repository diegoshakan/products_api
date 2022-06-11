require 'rails_helper'

RSpec.describe TypeUser, type: :model do
  describe 'associations' do
    it { should have_many(:users) }
  end

  describe 'validations' do
    it { should validate_presence_of(:label) }
  end

  describe 'enums' do
    it { should define_enum_for(:situation).with_values(active: "active", inactive: "inactive")
                                           .backed_by_column_of_type(:string) }
  end
end
