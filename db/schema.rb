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

ActiveRecord::Schema.define(version: 20171207110857) do

  create_table "blogs", force: :cascade do |t|
    t.string   "title"
    t.string   "blogimage"
    t.string   "videolink"
    t.text     "body"
    t.integer  "user_id"
    t.string   "metadescription"
    t.string   "metakeywords"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "slug"
    t.string   "blog_image_id"
  end

  create_table "buybitcoins", force: :cascade do |t|
    t.integer  "amount"
    t.decimal  "converted",     precision: 15, scale: 5
    t.string   "paymentoption"
    t.string   "transactionid"
    t.string   "datetransact"
    t.string   "timetransact"
    t.string   "btcaddress"
    t.string   "ordernumber"
    t.boolean  "accept"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "user_id"
  end

  create_table "crytosubscriptions", force: :cascade do |t|
    t.string   "email"
    t.string   "phone"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "photos", force: :cascade do |t|
    t.string   "attachment"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "blog_id"
    t.string   "blog_image_id"
  end

  create_table "sellbitcoins", force: :cascade do |t|
    t.integer  "amount"
    t.decimal  "converted",         precision: 15, scale: 5
    t.string   "paymentoption"
    t.string   "ordernumber"
    t.string   "mobilemoneyname"
    t.string   "mobilemoneynumber"
    t.boolean  "accept"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.integer  "user_id"
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "blog_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "tagimage"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "firstname"
    t.string   "phone"
    t.string   "lastname"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "countrycode"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
