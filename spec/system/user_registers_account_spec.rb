xdescribe "User registers account", type: :system do
  scenario "user registers and sees dashboard" do
    visit login_path
    click_link "register-user"

    email = Faker::Internet.email
    password = Faker::Internet.password
    fill_in "Email", with: email
    fill_in "Password", with: password
    fill_in "Password confirmation", with: password
    click_on "submit-register-user"

    expect(page).to have_text("You successfully registered")

    page_title = find("h1#page-title")
    expect(page_title).to have_content("Members")
    expect(page).to have_content(email)
  end
end
