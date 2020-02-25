require "rails_helper"

RSpec.describe "Signin", type: :system do
  it "signs a patron in" do
    patron = create(:patron)
    visit "/signin"

    fill_in "library_card_number", with: "1234567891"
    fill_in "password", with: "milk4all"

    click_button "Submit"

    expect(page).to have_text("Patron Account")
  end
end
