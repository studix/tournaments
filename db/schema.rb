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

ActiveRecord::Schema.define(version: 20200222122649) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "draws", force: :cascade do |t|
    t.integer "tournament_id"
    t.boolean "is_single"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "draws_registrations", id: false, force: :cascade do |t|
    t.bigint "registration_id"
    t.bigint "draw_id"
    t.index ["draw_id"], name: "index_draws_registrations_on_draw_id"
    t.index ["registration_id", "draw_id"], name: "index_draws_registrations_on_registration_id_and_draw_id"
    t.index ["registration_id"], name: "index_draws_registrations_on_registration_id"
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

  create_table "tournaments", force: :cascade do |t|
    t.string "title"
    t.date "spielplan_verfuegbar_datum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "registrations", "tournaments"
end