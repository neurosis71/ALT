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

ActiveRecord::Schema.define(version: 20150330144406) do

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

  create_table "albums", force: :cascade do |t|
    t.string   "name_fr"
    t.string   "name_en"
    t.string   "main_image"
    t.text     "description_fr"
    t.text     "description_en"
    t.integer  "location_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

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

  create_table "images", force: :cascade do |t|
    t.string   "path"
    t.integer  "album_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name_fr"
    t.string   "name_en"
    t.string   "main_image"
    t.text     "description_fr"
    t.text     "description_en"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
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

end
