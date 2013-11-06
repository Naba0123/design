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

ActiveRecord::Schema.define(version: 20131105051556) do

  create_table "after_graduation", id: false, force: true do |t|
    t.string  "belong",     limit: nil
    t.string  "position",   limit: nil
    t.integer "work_type"
    t.string  "other",      limit: nil
    t.date    "alter_date"
  end

  create_table "graduate", id: false, force: true do |t|
    t.boolean "change"
    t.date    "finish"
  end

  create_table "meeting", id: false, force: true do |t|
    t.date    "meeting_date"
    t.string  "meeting_place", limit: nil
    t.integer "event"
  end

  create_table "participant", id: false, force: true do |t|
    t.integer "wish"
    t.integer "wish_course"
    t.string  "teacher",           limit: nil
    t.boolean "entry_end"
    t.date    "entry_participant"
  end

  create_table "student", id: false, force: true do |t|
    t.integer "grade"
    t.integer "department"
    t.integer "research_subject"
    t.integer "research_room"
    t.string  "student_number",    limit: nil
    t.string  "guarantor_name",    limit: nil
    t.string  "guarantor_address", limit: nil
    t.string  "guarantor_phone",   limit: nil
    t.date    "entry"
  end

  create_table "users", force: true do |t|
    t.integer  "number"
    t.string   "user_number"
    t.string   "password_digest"
    t.string   "name"
    t.string   "country"
    t.string   "address"
    t.string   "phone"
    t.string   "job"
    t.integer  "job_type"
    t.date     "birthday"
    t.integer  "gender"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
