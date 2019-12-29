require 'rails_helper'

RSpec.describe Patron do
  it "has a valid factory" do
    expect(create(:patron)).to be_valid
  end
end

# it "has many books" do
#     book = Book.create(title: "The Kitchen of Hell", auth)
#     expect(patron.books.first).to eq(book)
#   end
