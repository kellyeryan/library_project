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
  name: "Pretty City Library",
  street_address: "3000 Brain Avenue",
  city: "Media",
  state: "PA"
)

Patron.create(
  first_name: "Wilson",
  last_name: "Contreras",
  library_card_number: 3_689_221_971,
  password: "cust4gen1ve",
  pa_resident: true
)
Patron.create(
  first_name: "Anthony",
  last_name: "Rizzo",
  library_card_number: 2_414_254_605,
  password: "gauc5fur1drod",
  pa_resident: true
)
Patron.create(
  first_name: "Kris",
  last_name: "Bryant",
  library_card_number: 9_935_025_279,
  password: "zort9rheg8tarm",
  pa_resident: true
)
Patron.create(
  first_name: "Kyle",
  last_name: "Schwarber",
  library_card_number: 2_974_850_008,
  password: "gnos1gnef9zok",
  pa_resident: true
)
Patron.create(
  first_name: "Javier",
  last_name: "Baez",
  library_card_number: 2_080_286_161,
  password: "fis1yee4jet",
  pa_resident: true
)

Author.create(
  first_name: "Marlon",
  last_name: "James"
)

Author.create(
  first_name: "Hiro",
  last_name: "Arikawa"
)

Author.create(
  first_name: "Ben",
  last_name: "Aaronovitch"
)

Author.create(
  first_name: "Neal",
  last_name: "Stephenson"
)

Author.create(
  first_name: "Madeline",
  last_name: "Miller"
)

Author.create(
  first_name: "Ted",
  last_name: "Chiang"
)

Author.create(
  first_name: "Naomi",
  last_name: "Mitchison"
)

Author.create(
  first_name: "Leigh",
  last_name: "Bardugo"
)

Author.create(
  first_name: "Max",
  last_name: "Gladstone"
)

Author.create(
  first_name: "Philip",
  last_name: "Pullman"
)

Author.create(
  first_name: "Alix",
  last_name: "Harrow"
)

Author.create(
  first_name: "Jodi",
  last_name: "Taylor"
)

Author.create(
  first_name: "Claire",
  last_name: "North"
)

Author.create(
  first_name: "Graeme",
  last_name: "Simsion"
)

Book.create(
  title: "The Rosie Project",
  catalog_number: "LB 2328.C34",
  library: Library.all.sample,
  author: Author.all.sample
)

Book.create(
  title: "The First Fifteen Lives of Harry August",
  catalog_number: "LB 6453.B10",
  library: Library.all.sample,
  author: Author.all.sample
)

Book.create(
  title: "Black Leopard Red Wolf",
  catalog_number: "LB 3333.N06",
  library: Library.all.sample,
  author: Author.all.sample
)

Book.create(
  title: "Just One Damed Thing After Another",
  catalog_number: "LB 2049.J06",
  library: Library.all.sample,
  author: Author.all.sample
)

Book.create(
  title: "The Ten Thousand Doors of January",
  catalog_number: "LB 9912.M13",
  library: Library.all.sample,
  author: Author.all.sample
)

Book.create(
  title: "The Secret Commonwealth",
  catalog_number: "LB 5279.U76",
  library: Library.all.sample,
  author: Author.all.sample
)

Book.create(
  title: "This Is How You Lose the Time War",
  catalog_number: "LB 8492.S43",
  library: Library.all.sample,
  author: Author.all.sample
)

Book.create(
  title: "The Ninth House",
  catalog_number: "LB 5732.A23",
  library: Library.all.sample,
  author: Author.all.sample
)

Book.create(
  title: "Travel Light",
  catalog_number: "LB 3201.V54",
  library: Library.all.sample,
  author: Author.all.sample
)

Book.create(
  title: "The Travelling Cat Chronicles",
  catalog_number: "LB 4783.B11",
  library: Library.all.sample,
  author: Author.all.sample
)

Book.create(
  title: "Quicksilver",
  catalog_number: "LB 3802.I83",
  library: Library.all.sample,
  author: Author.all.sample
)

Book.create(
  title: "The System of the World",
  catalog_number: "LB 3802.I85",
  library: Library.all.sample,
  author: Author.all.sample
)

Book.create(
  title: "Lies Sleeping",
  catalog_number: "LB 3827.H76",
  library: Library.all.sample,
  author: Author.all.sample
)

Book.create(
  title: "The Hanging Tree",
  catalog_number: "LB 3827.H90",
  library: Library.all.sample,
  author: Author.all.sample
)

Book.create(
  title: "Exhalation",
  catalog_number: "LB 4793.C43",
  library: Library.all.sample,
  author: Author.all.sample
)

Book.create(
  title: "The Song of Achilles",
  catalog_number: "LB 6472.R43",
  library: Library.all.sample,
  author: Author.all.sample
)
