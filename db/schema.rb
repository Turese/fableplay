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

ActiveRecord::Schema.define(version: 20190725051322) do

  create_table "elements", force: :cascade do |t|
    t.string  "name"
    t.boolean "is_basic", default: false, null: false
  end

  create_table "fablepet_colors", force: :cascade do |t|
    t.string  "name"
    t.boolean "is_basic", default: false, null: false
  end

  create_table "fablepet_patterns", force: :cascade do |t|
    t.string  "name"
    t.boolean "has_tertiary", default: false, null: false
  end

  create_table "fablepet_species", force: :cascade do |t|
    t.string  "name"
    t.boolean "is_basic", default: false, null: false
  end

  create_table "fablepets", id: false, force: :cascade do |t|
    t.string   "unique_name",                 null: false
    t.string   "name"
    t.integer  "species",                     null: false
    t.integer  "pattern",                     null: false
    t.string   "curr_element",                null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "level",           default: 1, null: false
    t.integer  "hp",              default: 1, null: false
    t.integer  "curr_hp",         default: 1, null: false
    t.integer  "attack",          default: 1, null: false
    t.integer  "defense",         default: 1, null: false
    t.integer  "magic_attack",    default: 1, null: false
    t.integer  "magic_defense",   default: 1, null: false
    t.integer  "mp",              default: 1, null: false
    t.integer  "curr_mp",         default: 1, null: false
    t.integer  "charisma",        default: 1, null: false
    t.integer  "agility",         default: 1, null: false
    t.integer  "speed",           default: 1, null: false
    t.string   "username",                    null: false
    t.integer  "stat_total",      default: 9, null: false
    t.integer  "primary_color"
    t.integer  "secondary_color"
    t.integer  "tertiary_color"
    t.text     "all_elements"
    t.text     "all_colors"
  end

  add_index "fablepets", ["unique_name"], name: "index_fablepets_on_unique_name", unique: true

  create_table "users", id: false, force: :cascade do |t|
    t.string   "email"
    t.string   "username",                      null: false
    t.string   "password_digest"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "active_pet"
    t.integer  "fable_coins",     default: 100, null: false
    t.integer  "gold_coins",      default: 10,  null: false
    t.integer  "opals",           default: 0,   null: false
  end

  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
