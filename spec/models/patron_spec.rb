require 'rails_helper'

RSpec.describe Patron do
  it "has a valid factory" do
    expect(create(:patron)).to be_valid
  end
end

RSpec.describe Patron, type: :model do
  it "is valid" do
    expect(build(:author)).to be_valid
  end

  it "is invalid with no first name" do
    expect(build(:patron, first_name: nil)).to be_invalid
  end

  it "is invalid with no last name" do
    expect(build(:patron, last_name: nil)).to be_invalid
  end
end
