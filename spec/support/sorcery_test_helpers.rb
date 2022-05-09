module Sorcery
  module TestHelpers
    module Rails
      def sign_in(user, password: "secret")
        visit login_path

        fill_in "Email", with: user.email
        fill_in "Password", with: password

        click_on "sign-in-button"

        expect(page).to have_text(user.email)
      end
    end
  end
end
