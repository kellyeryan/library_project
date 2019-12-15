# frozen_string_literal: true

# This file should contain all the record creation needed to
# seed the database with its default values.
# The data can then be loaded with the rails db:seed command
# (or created alongside the database with db:setup).
#

Library.create(
  name: "South Philly Library",
  street_address: "124 2nd Street",
  city: "Philadelphia",
  state: "PA"
)

Library.create(
  name: "Northern Liberties Library",
  street_address: "1600 Sammy Street",
  city: "Philadelphia",
  state: "PA"
)

Library.create(
  name: "Windy City Library",
  street_address: "3000 Brain Avenue",
  city: "Media",
  state: "PA"
)


Patron.create(
  first_name: "Wilson",
  last_name: "Contreras",
  library_card_number: 3_689_221_971,
  password: "cust4gen1ve"
)
Patron.create(
  first_name: "Anthony",
  last_name: "Rizzo",
  library_card_number: 2_414_254_605,
  password: "gauc5fur1drod"
)
Patron.create(
  first_name: "Kris",
  last_name: "Bryant",
  library_card_number: 9_935_025_279,
  password: "zort9rheg8tarm"
)
Patron.create(
  first_name: "Kyle",
  last_name: "Schwarber",
  library_card_number: 2_974_850_008,
  password: "gnos1gnef9zok"
)
Patron.create(
  first_name: "Javier",
  last_name: "Baez",
  library_card_number: 2_080_286_161,
  password: "fis1yee4jet"
)

Book.create(
  title: "The Rosie Project",
  author_first_name: "Graeme",
  author_last_name: "Simsion",
  catalog_number: "LB 2328.C34",
  library: Library.all.sample
)

Book.create(
  title: "The First Fifteen Lives of Harry August",
  author_first_name: "Claire",
  author_last_name: "North",
  catalog_number: "LB 6453.B10",
  library: Library.all.sample
)

Book.create(
  title: "Black Leopard Red Wolf",
  author_first_name: "Marlon",
  author_last_name: "James",
  catalog_number: "LB 3333.N06",
  library: Library.all.sample
)

Book.create(
  title: "Just One Damed Thing After Another",
  author_first_name: "Jodi",
  author_last_name: "Taylor",
  catalog_number: "LB 2049.J06",
  library: Library.all.sample
)

Book.create(
  title: "The Ten Thousand Doors of January",
  author_first_name: "Alix",
  author_last_name: "Harrow",
  catalog_number: "LB 9912.M13",
  library: Library.all.sample
)

Book.create(
  title: "The Secret Commonwealth",
  author_first_name: "Philip",
  author_last_name: "Pullman",
  catalog_number: "LB 5279.U76",
  library: Library.all.sample
)

Book.create(
  title: "This Is How You Lose the Time War",
  author_first_name: "Max",
  author_last_name: "Gladstone",
  catalog_number: "LB 8492.S43",
  library: Library.all.sample
)

Book.create(
  title: "The Ninth House",
  author_first_name: "Leigh",
  author_last_name: "Bardugo",
  catalog_number: "LB 5732.A23",
  library: Library.all.sample
)

Book.create(
  title: "Travel Light",
  author_first_name: "Naomi",
  author_last_name: "Mitchison",
  catalog_number: "LB 3201.V54",
  library: Library.all.sample
)

Book.create(
  title: "The Travelling Cat Chronicles",
  author_first_name: "Hiro",
  author_last_name: "Arikawa",
  catalog_number: "LB 4783.B11",
  library: Library.all.sample
)

Book.create(
  title: "Quicksilver",
  author_first_name: "Neal",
  author_last_name: "Stephenson",
  catalog_number: "LB 3802.I83",
  library: Library.all.sample
)

Book.create(
  title: "The System of the World",
  author_first_name: "Neal",
  author_last_name: "Stephenson",
  catalog_number: "LB 3802.I85",
  library: Library.all.sample
)

Book.create(
  title: "Lies Sleeping",
  author_first_name: "Ben",
  author_last_name: "Aaronovitch",
  catalog_number: "LB 3827.H76",
  library: Library.all.sample
)

Book.create(
  title: "The Hanging Tree",
  author_first_name: "Ben",
  author_last_name: "Aaronovitch",
  catalog_number: "LB 3827.H90",
  library: Library.all.sample
)

Book.create(
  title: "Exhalation",
  author_first_name: "Ted",
  author_last_name: "Chiang",
  catalog_number: "LB 4793.C43",
  library: Library.all.sample
)

Book.create(
  title: "The Song of Achilles",
  author_first_name: "Madeline",
  author_last_name: "Miller",
  catalog_number: "LB 6472.R43",
  library: Library.all.sample
)
