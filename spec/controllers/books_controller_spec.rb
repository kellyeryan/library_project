require "rails_helper"

RSpec.describe BooksController do

  describe "POST books#create", type: :request do

    it "creates a new book" do
      patron = create(:patron)
      library = create(:library)
      get new_library_book_path(library.id)

      fill_in "title", with: "The Empty Room"
      fill_in "author_attributes_0_first_name", with: "Randall"
      fill_in "author_attributes_0_last_name", with: "Reed"


      expect { click_button "Submit" }.to change(Book, :count).by(1)
      expect(Book.last.author.first_name).to eq "Randall"
    end
  end
end
