require "rails_helper"

RSpec.describe Skill do
  it { is_expected.to have_many(:positions).through(:skill_sets) }
end
