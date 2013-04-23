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

ActiveRecord::Schema.define(version: 20130423171812) do

  create_table "projects", force: true do |t|
    t.string "name"
  end

  create_table "settings", force: true do |t|
    t.text "settings"
  end

  create_table "tasks", force: true do |t|
    t.string "name"
  end

  create_table "time_entries", force: true do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.integer  "task_id"
    t.datetime "started_at"
    t.datetime "ended_at"
    t.integer  "time_total"
    t.text     "description"
  end

  create_table "users", force: true do |t|
    t.string "name"
    t.string "email"
  end

end
