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

ActiveRecord::Schema.define(version: 20150101104634) do

  create_table "people", force: :cascade do |t|
    t.string   "category"
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.datetime "age"
    t.string   "gender"
    t.string   "attendance"
    t.datetime "baptism"
    t.datetime "confirmation"
    t.datetime "priesthood"
    t.text     "help"
    t.integer  "teacher_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "people", ["teacher_id"], name: "index_people_on_teacher_id"

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visit_people", force: :cascade do |t|
    t.integer  "visit_id"
    t.integer  "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "visit_people", ["person_id"], name: "index_visit_people_on_person_id"
  add_index "visit_people", ["visit_id"], name: "index_visit_people_on_visit_id"

  create_table "visit_teachers", force: :cascade do |t|
    t.integer  "visit_id"
    t.integer  "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "visit_teachers", ["teacher_id"], name: "index_visit_teachers_on_teacher_id"
  add_index "visit_teachers", ["visit_id"], name: "index_visit_teachers_on_visit_id"

  create_table "visits", force: :cascade do |t|
    t.datetime "time"
    t.text     "location"
    t.text     "lesson"
    t.text     "description"
    t.text     "summary"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
