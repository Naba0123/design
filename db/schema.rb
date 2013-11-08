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

ActiveRecord::Schema.define(version: 20131106084324) do

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
    t.integer  "grade"
    t.integer  "department"
    t.integer  "research_subject"
    t.integer  "research_room"
    t.string   "student_number"
    t.string   "guarantor_name"
    t.string   "guarantor_address"
    t.string   "guarantor_phone"
    t.date     "entry_date"
    t.integer  "wish"
    t.integer  "wish_course"
    t.string   "teacher"
    t.boolean  "ischange"
    t.date     "finish_date"
    t.date     "meeting_date"
    t.string   "meeting_place"
    t.integer  "event_type"
    t.string   "belong"
    t.string   "position"
    t.text     "other"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
