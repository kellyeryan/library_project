require "rails_helper"

RSpec.describe PatronsController, type: :request do

  describe "POST patrons#create" do

    it "creates a new patron" do
      get "/patrons/new"

      patron = FactoryBot.create(:patron)

      expect(Patron.last.first_name).to eq "Sarah"

      expect(page).to have_content(Patron.last.last_name)
    end
  end
end
