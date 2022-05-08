require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build :user }

  describe "Validations" do
    it "validates email for uniqueness" do
      expect(user).to validate_uniqueness_of(:email)
    end
  end
end
