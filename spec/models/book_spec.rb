require 'rails_helper'

RSpec.describe Book do
  it "has a valid factory" do
    expect(create(:book)).to be_valid
  end

  it "is invalid with no title" do
    expect(build(:book, title: nil)).to be_invalid
  end

  it "is invalid with no author" do
    expect(build(:book, author: nil)).to be_invalid
  end
end
