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

ActiveRecord::Schema.define(version: 20170223155016) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "english"
    t.string   "chinese"
    t.string   "pinyin"
    t.string   "sentence"
    t.string   "slug"
    t.text     "notes"
    t.integer  "user_id"
  end

  create_table "okubo_decks", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "user_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "okubo_decks", ["user_id", "user_type"], name: "index_okubo_decks_on_user_id_and_user_type", using: :btree

  create_table "okubo_items", force: :cascade do |t|
    t.integer  "deck_id"
    t.integer  "source_id"
    t.string   "source_type"
    t.integer  "box",           default: 0
    t.datetime "last_reviewed"
    t.datetime "next_review"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "times_right",   default: 0
    t.integer  "times_wrong",   default: 0
  end

  add_index "okubo_items", ["source_id", "source_type"], name: "index_okubo_items_on_source_id_and_source_type", using: :btree

  create_table "users", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.string   "slug"
  end

end
