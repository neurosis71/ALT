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

ActiveRecord::Schema.define(version: 20150427125744) do

  create_table "abouts", force: :cascade do |t|
    t.text     "about_fr"
    t.text     "about_en"
    t.text     "career_fr"
    t.text     "career_en"
    t.text     "interests_fr"
    t.text     "interests_en"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

# Could not dump table "albums" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"

  create_table "cursus", force: :cascade do |t|
    t.date     "date"
    t.string   "school"
    t.string   "location_fr"
    t.string   "location_en"
    t.text     "description_fr"
    t.text     "description_en"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name_fr"
    t.string   "name_en"
    t.text     "description_fr"
    t.text     "description_en"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "main_image_file_name"
    t.string   "main_image_content_type"
    t.integer  "main_image_file_size"
    t.datetime "main_image_updated_at"
  end

  create_table "photos", force: :cascade do |t|
    t.integer  "album_id",           null: false
    t.datetime "created_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "professional_experiences", force: :cascade do |t|
    t.date     "date"
    t.string   "company"
    t.string   "location_fr"
    t.string   "location_en"
    t.text     "description_fr"
    t.text     "description_en"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string   "description_fr"
    t.string   "description_en"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",               default: "", null: false
    t.string   "encrypted_password",  default: "", null: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
