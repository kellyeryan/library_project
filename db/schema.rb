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

ActiveRecord::Schema.define(version: 2020_03_16_173925) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
  end

  create_table "book_loans", force: :cascade do |t|
    t.integer "book_id"
    t.integer "patron_id"
    t.boolean "checked_out", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "books", force: :cascade do |t|
    t.integer "library_id"
    t.string "title"
    t.string "catalog_number"
    t.integer "author_id"
    t.integer "genre_id"
    t.string "description"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
  end

  create_table "libraries", force: :cascade do |t|
    t.string "name"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "region"
  end

  create_table "patrons", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "library_card_number"
    t.string "password_digest"
  end

end
