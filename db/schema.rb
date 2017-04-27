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

ActiveRecord::Schema.define(version: 20170427185606) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "checkpoints", force: :cascade do |t|
    t.string   "name",          null: false
    t.integer  "race_id",       null: false
    t.string   "coordinates"
    t.string   "place_in_race"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["name"], name: "index_checkpoints_on_name", using: :btree
    t.index ["race_id"], name: "index_checkpoints_on_race_id", using: :btree
  end

  create_table "race_members", force: :cascade do |t|
    t.integer  "team_id",    null: false
    t.integer  "user_id",    null: false
    t.integer  "race_id",    null: false
    t.integer  "bib_number", null: false
    t.string   "type",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bib_number"], name: "index_race_members_on_bib_number", using: :btree
    t.index ["race_id"], name: "index_race_members_on_race_id", using: :btree
    t.index ["team_id"], name: "index_race_members_on_team_id", using: :btree
    t.index ["type"], name: "index_race_members_on_type", using: :btree
    t.index ["user_id"], name: "index_race_members_on_user_id", using: :btree
  end

  create_table "races", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "date",       null: false
    t.string   "track",      null: false
    t.integer  "team_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["date"], name: "index_races_on_date", using: :btree
    t.index ["name"], name: "index_races_on_name", using: :btree
  end

  create_table "team_members", force: :cascade do |t|
    t.integer  "team_id",    null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_team_members_on_team_id", using: :btree
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_teams_on_name", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",        null: false
    t.string   "name",            null: false
    t.string   "email",           null: false
    t.string   "phone"
    t.string   "password_digest"
    t.string   "session_token",   null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["name"], name: "index_users_on_name", using: :btree
    t.index ["username"], name: "index_users_on_username", unique: true, using: :btree
  end

end
