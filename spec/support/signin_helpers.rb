# frozen_string_literal: true

# For use in system tests
def sign_in
  patron = create(:patron)
  visit "/signin"

  fill_in "library_card_number", with: "1234567891"
  fill_in "password", with: "milk4all"

  click_button "Submit"
end
