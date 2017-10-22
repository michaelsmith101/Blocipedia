require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }
  
  # Should tests for name
   it { is_expected.to validate_presence_of(:name) }
   
end
