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

ActiveRecord::Schema.define(version: 2020_05_31_175112) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "draw_registrations", force: :cascade do |t|
    t.bigint "draw_id"
    t.bigint "registration_id"
    t.boolean "is_registered"
    t.string "partner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["draw_id"], name: "index_draw_registrations_on_draw_id"
    t.index ["registration_id"], name: "index_draw_registrations_on_registration_id"
  end

  create_table "draws", force: :cascade do |t|
    t.integer "tournament_id"
    t.boolean "is_single"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "registration_info"
  end

  create_table "registrations", force: :cascade do |t|
    t.string "name"
    t.string "first_name"
    t.string "phone"
    t.string "email"
    t.string "classing"
    t.float "classing_value"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "tournament_id"
    t.index ["tournament_id"], name: "index_registrations_on_tournament_id"
  end

  create_table "sharings", force: :cascade do |t|
    t.integer "tournament_id"
    t.string "key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tournaments", force: :cascade do |t|
    t.string "title"
    t.date "spielplan_verfuegbar_datum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "registrations", "tournaments"
end
