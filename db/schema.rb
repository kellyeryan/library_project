# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_14_211242) do

  create_table "books", force: :cascade do |t|
    t.integer "library_id"
    t.integer "patron_id"
    t.string "title"
    t.string "author_last_name"
    t.string "author_first_name"
    t.string "catalog_number"
  end

  create_table "libraries", force: :cascade do |t|
    t.string "name"
    t.string "street_address"
    t.string "city"
    t.string "state"
  end

  create_table "patrons", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "library_card_number"
    t.string "password_digest"
  end

end
