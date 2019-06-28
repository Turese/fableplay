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

ActiveRecord::Schema.define(version: 20190602035250) do

  create_table "fablepets", id: false, force: :cascade do |t|
    t.string   "unique_name",   null: false
    t.string   "name"
    t.integer  "species"
    t.integer  "pattern"
    t.string   "colors"
    t.string   "curr_colors"
    t.string   "elements"
    t.string   "curr_elements"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "level"
    t.integer  "hp"
    t.integer  "curr_hp"
    t.integer  "attack"
    t.integer  "defense"
    t.integer  "magic_attack"
    t.integer  "magic_defense"
    t.integer  "mp"
    t.integer  "curr_mp"
    t.integer  "charisma"
    t.integer  "agility"
    t.integer  "speed"
    t.string   "username"
  end

  add_index "fablepets", ["unique_name"], name: "index_fablepets_on_unique_name", unique: true

  create_table "users", id: false, force: :cascade do |t|
    t.string   "email"
    t.string   "username",        null: false
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
