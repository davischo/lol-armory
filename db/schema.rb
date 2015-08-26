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

ActiveRecord::Schema.define(version: 20150826020246) do

  create_table "images", force: :cascade do |t|
    t.integer  "imageable_id",   limit: 4
    t.string   "imageable_type", limit: 255
    t.string   "full",           limit: 255
    t.string   "sprite",         limit: 255
    t.string   "group",          limit: 255
    t.integer  "x",              limit: 4
    t.integer  "y",              limit: 4
    t.integer  "w",              limit: 4
    t.integer  "h",              limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "images", ["imageable_type", "imageable_id"], name: "index_images_on_imageable_type_and_imageable_id", using: :btree

  create_table "item_set_blocks", force: :cascade do |t|
    t.integer  "item_set_id",         limit: 4
    t.integer  "item_id",             limit: 4
    t.string   "type",                limit: 255
    t.boolean  "recMath"
    t.integer  "minSummonerLevel",    limit: 4
    t.integer  "maxSummonerLevel",    limit: 4
    t.string   "showIfSummonerSpell", limit: 255
    t.string   "hideIfSummonerSpell", limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "item_set_blocks", ["item_id"], name: "index_item_set_blocks_on_item_id", using: :btree
  add_index "item_set_blocks", ["item_set_id"], name: "index_item_set_blocks_on_item_set_id", using: :btree

  create_table "item_sets", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "type",       limit: 255
    t.string   "map",        limit: 255
    t.string   "mode",       limit: 255
    t.boolean  "priority"
    t.integer  "sortrank",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "items", id: false, force: :cascade do |t|
    t.integer  "recipe_id",            limit: 4
    t.integer  "id",                   limit: 4
    t.string   "name",                 limit: 255
    t.string   "group",                limit: 255
    t.text     "description",          limit: 65535
    t.text     "sanitizedDescription", limit: 65535
    t.text     "plaintext",            limit: 65535
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "items", ["recipe_id"], name: "index_items_on_recipe_id", using: :btree

end
