FactoryBot.define do
  factory :patron do
    first_name { "Sarah" }
    last_name { "Harding" }
    library_card_number { 1234567891 }
    password { "milk4all"}
  end
end
