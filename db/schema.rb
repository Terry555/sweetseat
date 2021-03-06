# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_08_23_171732) do

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "genre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "bio"
  end

  create_table "concerts", force: :cascade do |t|
    t.integer "artist_id"
    t.integer "venue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date"
    t.integer "price"
    t.index ["artist_id"], name: "index_concerts_on_artist_id"
    t.index ["venue_id"], name: "index_concerts_on_venue_id"
  end

  create_table "fans", force: :cascade do |t|
    t.string "name"
    t.boolean "drunk"
    t.integer "balance"
    t.integer "age"
    t.string "favorite_artist"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "password_digest"
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "fan_id"
    t.integer "concert_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["concert_id"], name: "index_tickets_on_concert_id"
    t.index ["fan_id"], name: "index_tickets_on_fan_id"
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.integer "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
