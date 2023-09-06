require "rails_helper"

RSpec.describe SkillSet do
  it { is_expected.to(belong_to(:position)) }
  it { is_expected.to(belong_to(:skill)) }
end
