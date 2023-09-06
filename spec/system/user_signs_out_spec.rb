require "rails_helper"

# rubocop:disable RSpec/ExampleLength
describe "User signs out" do
  let(:user) { create(:user) }

  before { sign_in(user) }

  # rubocop:disable RSpec/MultipleExpectations
  it "user signs out from members and get taken to homepage" do
    visit about_path

    expect(page).to have_current_path(about_path)

    click_on "logout-link"

    expect(page).to have_current_path(root_path)
    expect(page).to have_text("logged out")
    expect(page).to have_text("Member login")
  end
  # rubocop:enable RSpec/MultipleExpectations
end
# rubocop:enable RSpec/ExampleLength
