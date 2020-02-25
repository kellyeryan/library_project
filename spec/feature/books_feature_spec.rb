require "rails_helper"

RSpec.describe "books feature tests" do
  describe "book creation", type: :system do
    before do
      sign_in
    end

    it "creates a book" do
      genre = create(:genre)
      library = create(:library)
      visit new_library_book_path(library)

      fill_in "book_title", with: "The Empty Room"
      fill_in "author_first_name", with: "Randall"
      fill_in "author_last_name", with: "Reed"
      select genre.name, from: "book_genre_id"
      click_on "Create Book"
      sleep 1

      expect(Book.count).to eq(1)
      expect(Book.last.author.first_name).to eq "Randall"
    end
  end
end
