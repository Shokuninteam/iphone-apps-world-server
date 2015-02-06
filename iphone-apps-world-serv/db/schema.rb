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

ActiveRecord::Schema.define(version: 20150206103538) do

  create_table "apps", force: :cascade do |t|
    t.string   "name",                        null: false
    t.decimal  "price"
    t.string   "url"
    t.text     "description",                 null: false
    t.text     "analysis"
   # t.integer  "pro_id"
    #t.integer  "con_id"
    t.integer  "category_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "released",    default: false
  end

  add_index "apps", ["category_id"], name: "index_apps_on_category_id"
  add_index "apps", ["name"], name: "index_apps_on_name", unique: true
#  add_index "apps", ["pro_id"], name: "index_apps_on_pro_id"
#  add_index "apps", ["con_id"], name: "index_apps_on_con_id"

  create_table "categories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  add_index "categories", ["name"], name: "index_categories_on_name", unique: true

  create_table "cons", force: :cascade do |t|
    t.string   "content"
    t.integer  "app_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cons", ["app_id"], name: "index_cons_on_app_id"

  create_table "countries", force: :cascade do |t|
    t.string   "label"
    t.integer  "store_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "countries", ["store_id"], name: "index_countries_on_store_id"

  create_table "images", force: :cascade do |t|
    t.string   "name"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "app_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "images", ["app_id"], name: "index_images_on_app_id"

  create_table "pros", force: :cascade do |t|
    t.string   "content"
    t.integer  "app_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

   add_index "pros", ["app_id"], name: "index_pros_on_app_id"

  create_table "stores", force: :cascade do |t|
    t.string   "baseRouterUrl"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "top10s", force: :cascade do |t|
    t.integer  "app_id"
    t.integer  "rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "top10s", ["app_id"], name: "index_top10s_on_app_id"

 #create_table :apps_pros, id: false do |t|
#   t.belongs_to :app
  #  t.belongs_to :pro
  #end

  #create_table :apps_cons, id: false do|t|
   # t.belongs_to :app 
    #t.belongs_to :con
 # end

end
