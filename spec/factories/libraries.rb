# frozen_string_literal: true

FactoryBot.define do
  factory :library do
    name { "Manny Home Stead" }
    street_address { "986 Kenya Street" }
    city { "Ryan" }
    state { "Narnia" }
    region { "SE" }
    id { 1 }
  end
end
