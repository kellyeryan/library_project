FactoryBot.define do
  factory :book do
    title { "Beefy Chunk Chunk" }
    library
    author
    catalog_number { "6221.82" }
    genre_id { 10 }
  end
end
