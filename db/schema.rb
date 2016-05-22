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

ActiveRecord::Schema.define(version: 20160522000352) do

  create_table "notifications", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "plant_id"
    t.string   "message_content"
  end

  add_index "notifications", ["user_id"], name: "index_notifications_on_user_id"

  create_table "plant_types", force: :cascade do |t|
    t.string   "image_url"
    t.string   "common_name"
    t.string   "scientific_name"
    t.string   "description"
    t.string   "light_requirements"
    t.string   "watering_requirements"
    t.integer  "low_water_frequency"
    t.integer  "high_water_frequency"
    t.integer  "soil_change_frequency"
    t.integer  "fertilizer_frequency"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plants", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "plant_type_id"
    t.string   "custom_name"
    t.date     "last_date_watered"
    t.integer  "custom_watering_frequency"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "next_water_date"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "phone"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "communication_method"
  end

end
