require 'rails_helper'

RSpec.describe ProductVariation, type: :model do
  describe 'associations' do
    it { should belong_to(:product).optional(:true) }
    it { should belong_to(:color).optional(:true) }
    it { should belong_to(:size).optional(:true) }
  end

  describe 'enums' do
    it { should define_enum_for(:situation).with_values(active: "active", inactive: "inactive")
                                           .backed_by_column_of_type(:string) }
  end
end
