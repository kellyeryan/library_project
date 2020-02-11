# frozen_string_literal: true

# This file should contain all the record creation needed to
# seed the database with its default values.
# The data can then be loaded with the rails db:seed command
# (or created alongside the database with db:setup).
#
6.times do
  Library.create(
    name: Faker::Address.unique.community,
    street_address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: "Narnia",
    region: Faker::Compass.ordinal_abbreviation
  )
end

103.times do
  Patron.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    library_card_number: Faker::Number.number(digits: 10),
    password: Faker::Alphanumeric.alphanumeric(number: 10)
  )
end

200.times do
  Author.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end

15.times do
  Genre.create(
    name: Faker::Book.unique.genre
  )
end

215.times do
  Book.create(
    title: Faker::Book.title,
    catalog_number: Faker::Number.decimal(l_digits: 2, r_digits: 4),
    genre: Genre.all.sample,
    library: Library.all.sample,
    author: Author.all.sample
  )
end
