# frozen_string_literal: true

# This file should contain all the record creation needed to
# seed the database with its default values.
# The data can then be loaded with the rails db:seed command
# (or created alongside the database with db:setup).
#
30.times do
  Library.create(
    name: Faker::Address.community,
    street_address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: "PA"
  )
end

101.times do
  Patron.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    library_card_number: Faker::Number.number(digits: 10),
    password: Faker::Alphanumeric.alphanumeric(number: 10),
  )
end

200.times do
  Author.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end

215.times do
  Book.create(
    title: Faker::Book.title,
    catalog_number: Faker::Number.decimal(l_digits: 2, r_digits: 4),
    genre: Faker::Book.genre,
    summary: Faker::Lorem.paragraph(sentence_count: 2),
    library: Library.all.sample,
    author: Author.all.sample
  )
end
