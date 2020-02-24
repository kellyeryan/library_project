require "rails_helper"

describe "POST books#create" do
  it "should create a new book" do
    patron = create(:patron)
    login_as(patron, scope: :patron)
    visit new_library_book_path

    fill_in "title", with: "The Empty Room"
    fill_in "author_attributes_0_first_name", with: "Randall"
    fill_in "author_attributes_0_last_name", with: "Reed"


    expect { click_button "Submit" }.to change(Book, :count).by(1)
  end
end
