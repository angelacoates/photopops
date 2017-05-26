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

ActiveRecord::Schema.define(version: 20170526030822) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "photos", force: :cascade do |t|
    t.text     "image_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "request_id"
    t.index ["request_id"], name: "index_photos_on_request_id", using: :btree
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "photographer_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "requestor_id"
    t.index ["photographer_id"], name: "index_requests_on_photographer_id", using: :btree
    t.index ["requestor_id"], name: "index_requests_on_requestor_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "phone_number"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "nickname"
    t.string   "access_token"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.boolean  "pro_camera",       default: false
    t.decimal  "rating"
    t.boolean  "opt_in",           default: false
  end

end
