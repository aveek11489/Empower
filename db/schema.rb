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

ActiveRecord::Schema.define(version: 20160415015041) do

  create_table "cards", force: :cascade do |t|
    t.integer  "uid",         limit: 8
    t.datetime "issue_date"
    t.datetime "expiry_date"
    t.integer  "balance",     limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: :cascade do |t|
    t.integer  "vendor_id",  limit: 4
    t.string   "location",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "readers", force: :cascade do |t|
    t.integer  "uid",         limit: 8
    t.integer  "location_id", limit: 4
    t.datetime "issue_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transaction_types", force: :cascade do |t|
    t.string "type", limit: 255
  end

  create_table "transactions", force: :cascade do |t|
    t.integer  "transaction_type_id", limit: 4
    t.integer  "reader_id",           limit: 4
    t.integer  "card_id",             limit: 4
    t.integer  "amount",              limit: 4
    t.integer  "card_balance",        limit: 4
    t.datetime "transaction_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendors", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
