# frozen_string_literal: true

FactoryBot.define do
  factory :book do
    title { "Beefy Chunk Chunk" }
    library
    author
    catalog_number { "6221.82" }
    genre
  end
end
