require "rails_helper"

describe "User login flow", type: :system do
  scenario "user goes to log in page" do
    visit root_path
    click_on "login-link"

    expect(page).to have_content("Login")
  end

  scenario "user fills out form and signs in" do
    user = create :user

    visit login_path
    sign_in(user)

    expect(page).to have_content(user.email)
    expect(page).to have_text("You have successfully logged in as #{user.email}")
  end
end
