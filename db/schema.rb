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
    t.string   "name_fr", null: false
    t.string   "name_en", null: false
    t.string   "main_image"
    t.text     "description_fr"
    t.text     "description_en"
    t.integer  "location_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "cursus", force: :cascade do |t|
    t.date     "date", null: false
    t.string   "school", null: false
    t.string   "location_fr", null: false
    t.string   "location_en", null: false
    t.text     "description_fr"
    t.text     "description_en"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "path", null: false
    t.integer  "album_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name_fr", null: false
    t.string   "name_en", null: false
    t.string   "main_image"
    t.text     "description_fr"
    t.text     "description_en"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "professional_experiences", force: :cascade do |t|
    t.date     "date", null: false
    t.string   "company", null: false
    t.string   "location_fr", null: false
    t.string   "location_en", null: false
    t.text     "description_fr"
    t.text     "description_en"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string   "description_fr", null: false
    t.string   "description_en", null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
