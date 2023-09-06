require "rails_helper"

RSpec.describe Position do
  it { is_expected.to belong_to(:company) }
  it { is_expected.to have_many(:skills).through(:skill_sets) }
end
