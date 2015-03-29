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

ActiveRecord::Schema.define(version: 20150329091457) do

  create_table "degrees", force: :cascade do |t|
    t.integer  "field_id"
    t.integer  "year",       limit: 4
    t.string   "level"
    t.string   "sex",        limit: 1
    t.integer  "count"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "degrees", ["field_id"], name: "index_degrees_on_field_id"
  add_index "degrees", ["level"], name: "index_degrees_on_level"
  add_index "degrees", ["sex"], name: "index_degrees_on_sex"
  add_index "degrees", ["year"], name: "index_degrees_on_year"

  create_table "degrees_by_field_year_sexes", force: :cascade do |t|
    t.integer  "field_id"
    t.integer  "year",       limit: 4
    t.string   "level"
    t.string   "sex",        limit: 1
    t.integer  "count"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "degrees_by_field_year_sexes", ["field_id"], name: "index_degrees_by_field_year_sexes_on_field_id"
  add_index "degrees_by_field_year_sexes", ["level"], name: "index_degrees_by_field_year_sexes_on_level"
  add_index "degrees_by_field_year_sexes", ["sex"], name: "index_degrees_by_field_year_sexes_on_sex"
  add_index "degrees_by_field_year_sexes", ["year"], name: "index_degrees_by_field_year_sexes_on_year"

  create_table "degrees_by_field_years", force: :cascade do |t|
    t.integer  "field_id"
    t.integer  "year",             limit: 4
    t.integer  "bachelor_all"
    t.integer  "bachelor_male"
    t.integer  "bachelor_female"
    t.integer  "master_all"
    t.integer  "master_male"
    t.integer  "master_female"
    t.integer  "doctorate_all"
    t.integer  "doctorate_male"
    t.integer  "doctorate_female"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "degrees_by_field_years", ["field_id"], name: "index_degrees_by_field_years_on_field_id"
  add_index "degrees_by_field_years", ["year"], name: "index_degrees_by_field_years_on_year"

  create_table "fields", force: :cascade do |t|
    t.string   "name"
    t.integer  "field_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "fields", ["field_id"], name: "index_fields_on_field_id"
  add_index "fields", ["name"], name: "index_fields_on_name"

end
