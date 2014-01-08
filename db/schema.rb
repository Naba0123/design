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

ActiveRecord::Schema.define(version: 20140108091012) do

  create_table "after_graduations", force: true do |t|
    t.string   "belong"
    t.string   "position"
    t.integer  "job_kind"
    t.text     "other"
    t.integer  "graduate_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "certificate_kinds", force: true do |t|
    t.string "name"
  end

  create_table "certificates", force: true do |t|
    t.integer  "kind"
    t.integer  "finish_year"
    t.integer  "count"
    t.text     "purpose"
    t.string   "another_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments", force: true do |t|
    t.string "name"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.date     "date"
    t.string   "place"
    t.text     "detail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "graduates", force: true do |t|
    t.integer "user_id"
    t.boolean "is_change"
    t.date    "finish_date"
    t.boolean "is_entered"
  end

  create_table "guidance_kinds", force: true do |t|
    t.string "name"
  end

  create_table "guidances", force: true do |t|
    t.date     "guidance_date"
    t.string   "guidance_place"
    t.integer  "guidance_kind_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guidances_users", force: true do |t|
    t.string   "user_id",     limit: 8, null: false
    t.string   "guidance_id", limit: 8, null: false
    t.datetime "create_at"
    t.datetime "update_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "job_kinds", force: true do |t|
    t.string "name"
  end

  create_table "meetings", force: true do |t|
    t.integer "user_id"
    t.date    "meeting_date"
    t.string  "meeting_place"
    t.integer "event_kind"
  end

  create_table "participants", force: true do |t|
    t.integer "user_id"
    t.integer "wish"
    t.integer "wish_course"
    t.string  "teacher"
  end

  create_table "read_marks", force: true do |t|
    t.integer  "readable_id"
    t.integer  "user_id",                  null: false
    t.string   "readable_type", limit: 20, null: false
    t.datetime "timestamp"
  end

  add_index "read_marks", ["user_id", "readable_type", "readable_id"], name: "index_read_marks_on_user_id_and_readable_type_and_readable_id"

  create_table "research_rooms", force: true do |t|
    t.string "name"
  end

  create_table "research_subjects", force: true do |t|
    t.string "name"
  end

  create_table "students", force: true do |t|
    t.integer "user_id"
    t.integer "grade"
    t.integer "department"
    t.integer "research_subject"
    t.integer "research_room"
    t.string  "student_number"
    t.string  "guarantor_name"
    t.string  "guarantor_address"
    t.string  "guarantor_phone"
    t.date    "entry_date"
  end

  create_table "users", force: true do |t|
    t.string   "account"
    t.string   "password_digest"
    t.string   "name"
    t.string   "country"
    t.string   "address"
    t.string   "phone"
    t.string   "job"
    t.integer  "job_kind_id"
    t.date     "birthday"
    t.integer  "gender"
    t.boolean  "authorized"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
