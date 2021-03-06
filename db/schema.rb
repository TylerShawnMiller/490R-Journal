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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121025215653) do

  create_table "authentications", :force => true do |t|
    t.string   "uid"
    t.string   "image_url"
    t.integer  "user_id"
    t.string   "provider"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "diaries", :force => true do |t|
    t.string   "title"
    t.date     "start_date"
    t.date     "end_date",   :limit => 255
    t.integer  "user_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "entries", :force => true do |t|
    t.string   "title"
    t.date     "date"
    t.text     "entry"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "diary_id",   :default => 1
  end

  create_table "tags", :force => true do |t|
    t.integer  "diary_id"
    t.string   "tag_body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "name"
  end

end
