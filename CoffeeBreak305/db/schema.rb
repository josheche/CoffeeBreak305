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

ActiveRecord::Schema.define(version: 20150527160337) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "businesses", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.string   "address"
    t.string   "phone"
  end

  create_table "order_profiles", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "user_id"
    t.string   "name"
    t.integer  "product_id"
    t.string   "phone"
    t.string   "address_for_delivery"
  end

  add_index "order_profiles", ["user_id"], name: "index_order_profiles_on_user_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "order_profile_id"
    t.integer  "runner_id"
    t.string   "status"
  end

  add_index "orders", ["order_profile_id"], name: "index_orders_on_order_profile_id", using: :btree
  add_index "orders", ["runner_id"], name: "index_orders_on_runner_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "size"
    t.integer  "cost_in_pennies"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "business_id"
  end

  create_table "runners", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.string   "phone"
    t.string   "email"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "allergy"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "order_profiles", "users"
  add_foreign_key "orders", "order_profiles"
  add_foreign_key "orders", "runners"
end
