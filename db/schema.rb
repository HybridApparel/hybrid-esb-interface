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

ActiveRecord::Schema.define(version: 20160920222622) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orderdetails", force: :cascade do |t|
    t.string  "stylename"
    t.integer "quantity"
    t.string  "garmentsize"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "orderid"
    t.string   "firstname"
    t.string   "lastname"
    t.time     "created"
    t.time     "modified"
    t.integer  "orderstatus"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "orderdetail_id"
    t.index ["orderdetail_id"], name: "index_orders_on_orderdetail_id", using: :btree
    t.index ["orderid"], name: "index_orders_on_orderid", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.string   "styleident"
    t.string   "product_name"
    t.string   "product_description"
    t.string   "licensexref"
    t.string   "product_thumb_url"
    t.string   "product_preview_url"
    t.string   "product_print_image_url"
    t.string   "trim_codes"
    t.string   "necklabel_binid"
    t.string   "hangtag_binid"
    t.integer  "orderdetail_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["orderdetail_id"], name: "index_products_on_orderdetail_id", using: :btree
  end

  add_foreign_key "orders", "orderdetails"
  add_foreign_key "products", "orderdetails"
end
