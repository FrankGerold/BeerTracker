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

ActiveRecord::Schema.define(version: 2019_12_04_212212) do

  create_table "cups", force: :cascade do |t|
    t.integer "rating"
    t.integer "user_id", null: false
    t.integer "keg_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["keg_id"], name: "index_cups_on_keg_id"
    t.index ["user_id"], name: "index_cups_on_user_id"
  end

  create_table "floors", force: :cascade do |t|
    t.string "building"
    t.integer "floor_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "keg_floors", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "keg_id", null: false
    t.integer "floor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["floor_id"], name: "index_keg_floors_on_floor_id"
    t.index ["keg_id"], name: "index_keg_floors_on_keg_id"
    t.index ["user_id"], name: "index_keg_floors_on_user_id"
  end

  create_table "kegs", force: :cascade do |t|
    t.string "name"
    t.string "beer_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

end
