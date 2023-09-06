require "rails_helper"

RSpec.describe Company do
  it { is_expected.to have_many(:positions).dependent(:destroy) }
end
