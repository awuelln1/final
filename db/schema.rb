# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 0) do

  create_table "attractions", force: :cascade do |t|
    t.string  "attraction_name"
    t.text    "attraction_description"
    t.integer "city_id"
    t.integer "sense_id"
    t.integer "profile_id_1"
    t.integer "profile_id_2"
    t.integer "profile_id_3"
    t.integer "profile_id_4"
    t.integer "profile_id_5"
    t.text    "attraction_website"
  end

  add_index "attractions", ["city_id"], name: "index_attractions_on_city_id"
  add_index "attractions", ["sense_id"], name: "index_attractions_on_sense_id"

  create_table "cities", force: :cascade do |t|
    t.string  "city_name"
    t.text    "city_description"
    t.string  "hear_attraction"
    t.string  "see_attraction"
    t.string  "smell_attraction"
    t.string  "taste_attraction"
    t.string  "touch_attraction"
    t.string  "city_image"
    t.integer "state_id"
  end

  add_index "cities", ["state_id"], name: "index_cities_on_state_id"

  create_table "profiles", force: :cascade do |t|
    t.string "profile_name"
    t.text   "profile_description"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "user_id"
    t.integer "rating"
    t.text    "body"
  end

  add_index "reviews", ["movie_id"], name: "index_reviews_on_movie_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "senses", force: :cascade do |t|
    t.string "sense_name"
    t.text   "sense_description"
  end

  create_table "specifics", force: :cascade do |t|
    t.integer "city_id"
    t.integer "sense_id"
    t.integer "profile_id"
    t.string  "attraction_id"
  end

  add_index "specifics", ["attraction_id"], name: "index_specifics_on_attraction_id"
  add_index "specifics", ["city_id"], name: "index_specifics_on_city_id"
  add_index "specifics", ["profile_id"], name: "index_specifics_on_profile_id"
  add_index "specifics", ["sense_id"], name: "index_specifics_on_sense_id"

  create_table "states", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "name"
  end

end
