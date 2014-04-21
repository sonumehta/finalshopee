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

ActiveRecord::Schema.define(version: 20140420163025) do

  create_table "cartfinals", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cat1s", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cat2s", force: true do |t|
    t.string   "name"
    t.integer  "cat1_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cat3s", force: true do |t|
    t.string   "name"
    t.integer  "cat2_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.integer  "product_id"
    t.string   "content"
    t.string   "text"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  create_table "customerorders", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "email"
    t.string   "pay_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "cart_id"
    t.string   "status",     default: "Pending"
  end

  create_table "line_items", force: true do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quantity",         default: 1
    t.integer  "customerorder_id"
  end

  create_table "order_details", force: true do |t|
    t.integer  "orderID"
    t.integer  "productID"
    t.integer  "orderNumber"
    t.float    "price"
    t.integer  "quantity"
    t.float    "discount"
    t.float    "total"
    t.integer  "IDSKU"
    t.string   "size"
    t.string   "color"
    t.datetime "shipdate"
    t.datetime "billdate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "badd"
    t.string   "bcity"
    t.string   "bstate"
    t.string   "bpincode"
    t.string   "bcountry"
    t.string   "sadd"
    t.string   "scity"
    t.string   "sstate"
    t.string   "scountry"
    t.string   "spincode"
  end

  create_table "orders", force: true do |t|
    t.integer  "custID"
    t.integer  "orderNumber"
    t.integer  "payID"
    t.datetime "orderdate"
    t.datetime "shipdate"
    t.datetime "reqdate"
    t.integer  "shipperID"
    t.float    "salesTax"
    t.string   "status"
    t.text     "error"
    t.boolean  "fulfilled"
    t.boolean  "deleted"
    t.boolean  "paid"
    t.datetime "paydate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", force: true do |t|
    t.string   "type"
    t.boolean  "allowed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "pname"
    t.integer  "IDSKU"
    t.integer  "supplier_id"
    t.string   "cat1"
    t.string   "cat2"
    t.string   "cat3"
    t.string   "desc"
    t.float    "price"
    t.string   "color"
    t.float    "weight"
    t.float    "discount"
    t.boolean  "product_available"
    t.boolean  "discount_available"
    t.string   "picture"
    t.integer  "ranking"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pic_file_name"
    t.string   "pic_content_type"
    t.integer  "pic_file_size"
    t.datetime "pic_updated_at"
  end

  create_table "shippers", force: true do |t|
    t.string   "company_name"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user"
    t.integer  "product"
  end

  create_table "suppliers", force: true do |t|
    t.string   "company_name"
    t.string   "email"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "pincode"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email_id"
    t.string   "address"
    t.string   "phone_no"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "pincode"
    t.string   "country"
    t.string   "phone"
    t.string   "card"
    t.string   "cardID"
    t.integer  "cardexpyr"
    t.string   "cardexpmo"
  end

  add_index "users", ["email_id"], name: "index_users_on_email_id", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

  create_table "vieweditems", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "product_id"
  end

  create_table "viewedpros", force: true do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
