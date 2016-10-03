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

ActiveRecord::Schema.define(version: 20161003091136) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "pages_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "page_id"
    t.index ["page_id"], name: "index_comments_on_page_id", using: :btree
    t.index ["pages_id"], name: "index_comments_on_pages_id", using: :btree
  end

  create_table "pages", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "published_at"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "comments", "pages"
  add_foreign_key "comments", "pages", column: "pages_id"
end
