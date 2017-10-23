require 'rails_helper'

RSpec.describe User, type: :model do
    let(:user) { create(:user) }
  
    #email tests
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email) }
   
    #password tests
    it { is_expected.to validate_presence_of(:password) }
   
end
