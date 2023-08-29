require "rails_helper"

xdescribe "User login flow" do
  let(:user) { create(:user) }

  it "page displays login notice when user signs in" do
    sign_in(user)

    expect(page).to have_text("You have successfully logged in as #{user.email}")
  end
end
