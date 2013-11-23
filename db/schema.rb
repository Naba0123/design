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

ActiveRecord::Schema.define(version: 20131120084324) do

  create_table "after_graduations", force: true do |t|
    t.string   "user_id"
    t.string   "belong"
    t.string   "position"
    t.integer  "work_type"
    t.text     "other"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "graduates", force: true do |t|
    t.string  "user_id"
    t.boolean "is_change"
    t.date    "finish_date"
  end

  create_table "meetings", force: true do |t|
    t.string  "user_id"
    t.date    "meeting_date"
    t.string  "meeting_place"
    t.integer "event_type"
  end

  create_table "participants", force: true do |t|
    t.string  "user_id"
    t.integer "wish"
    t.integer "wish_course"
    t.string  "teacher"
    t.boolean "entry_dended"
    t.date    "entry_date"
  end

  create_table "students", force: true do |t|
    t.string  "user_id"
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
    t.string   "user_id"
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
