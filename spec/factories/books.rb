FactoryBot.define do
  factory :book do
    title
    catalog_number
    genre
    summary
    association :author
  end
end
