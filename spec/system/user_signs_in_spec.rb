require "rails_helper"

describe "User login flow", type: :system do
  let(:user) { create :user }

  scenario "page displays login notice when user signs in" do
    sign_in(user)

    expect(page).to have_text("You have successfully logged in as #{user.email}")
  end
end
