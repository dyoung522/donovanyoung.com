require "rails_helper"

describe "User signs out", type: :system do
  let(:user) { create :user }

  before do
    visit login_path
    sign_in(user)
    expect(page).to have_text("logout")
  end

  scenario "user signs out from members and get taken to homepage" do
    visit about_path

    expect(page).to have_current_path(about_path)

    click_on "logout-link"

    expect(page).to have_text("You have been logged out")
    expect(page).to have_current_path(root_path)
  end
end
