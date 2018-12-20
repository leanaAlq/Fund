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

ActiveRecord::Schema.define(version: 2018_12_18_160934) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.integer "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "accounts_shareholders", id: false, force: :cascade do |t|
    t.bigint "account_id", null: false
    t.bigint "shareholder_id", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.integer "amount"
    t.date "start"
    t.date "end"
    t.string "transaction_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shareholders", force: :cascade do |t|
    t.string "name"
    t.integer "deposit"
    t.string "gender"
    t.string "mobile"
    t.string "iban"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "auth_code"
  end

  create_table "transactions", force: :cascade do |t|
    t.integer "shareholder_id"
    t.boolean "is_approved", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "amount"
    t.integer "duration"
    t.integer "plan"
  end

end
