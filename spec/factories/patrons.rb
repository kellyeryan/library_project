# frozen_string_literal: true

FactoryBot.define do
  factory :patron do
    first_name { "Sarah" }
    last_name { "Harding" }
    library_card_number { 1_234_567_891 }
    password { "milk4all" }
  end
end
