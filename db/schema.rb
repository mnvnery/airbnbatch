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

ActiveRecord::Schema.define(version: 2020_08_24_161131) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "personality_id", null: false
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "total_price"
    t.boolean "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["personality_id"], name: "index_bookings_on_personality_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "personalities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "price_hour"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_personalities_on_user_id"
  end

  create_table "personality_reviews", force: :cascade do |t|
    t.bigint "booking_id", null: false
    t.integer "rating"
    t.text "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["booking_id"], name: "index_personality_reviews_on_booking_id"
  end

  create_table "user_reviews", force: :cascade do |t|
    t.bigint "booking_id", null: false
    t.integer "rating"
    t.text "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["booking_id"], name: "index_user_reviews_on_booking_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "location"
    t.string "language"
    t.string "email"
    t.string "phone"
    t.string "password"
    t.date "birthdate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bookings", "personalities"
  add_foreign_key "bookings", "users"
  add_foreign_key "personalities", "users"
  add_foreign_key "personality_reviews", "bookings"
  add_foreign_key "user_reviews", "bookings"
end
