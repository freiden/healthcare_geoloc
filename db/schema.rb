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

ActiveRecord::Schema.define(version: 20140913200239) do

  create_table "professionals", force: true do |t|
    t.string   "civility",                      null: false
    t.string   "first_name",                    null: false
    t.string   "last_name",                     null: false
    t.string   "specialty",                     null: false
    t.string   "address",                       null: false
    t.string   "zip_code",                      null: false
    t.string   "city",                          null: false
    t.string   "country",    default: "France", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "latitude"
    t.float    "longitude"
  end

end
