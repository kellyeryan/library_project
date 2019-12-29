require 'rails_helper'

RSpec.describe Author do
  it "has a valid factory" do
    expect(create(:author)).to be_valid
  end

  it "is invalid with no first name" do
    expect(build(:author, first_name: nil)).to be_invalid
  end

  it "is invalid with no last name" do
    expect(build(:author, last_name: nil)).to be_invalid
  end
end
