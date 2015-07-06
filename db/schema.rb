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

ActiveRecord::Schema.define(version: 20150705213152) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "data", force: :cascade do |t|
    t.integer  "user_id"
    t.date     "day"
    t.json     "heart_series"
    t.json     "sleep_series"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "data", ["user_id"], name: "index_data_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.integer  "uid"
    t.string   "refresh_token"
    t.string   "access_token"
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_foreign_key "data", "users"
end
