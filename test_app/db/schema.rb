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

ActiveRecord::Schema.define(:version => 20111108165934) do

  create_table "comments", :force => true do |t|
    t.string   "game_id"
    t.string   "user_id"
    t.string   "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", :force => true do |t|
    t.datetime "gametime"
    t.integer  "list1_id"
    t.integer  "list2_id"
    t.boolean  "pending"
    t.boolean  "cancelled"
    t.boolean  "forfeited"
    t.integer  "winner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lists", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "army"
    t.integer  "points"
    t.integer  "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "troops", :force => true do |t|
    t.string   "name"
    t.integer  "cost"
    t.integer  "attacks"
    t.integer  "initiative"
    t.integer  "wounds"
    t.integer  "min"
    t.integer  "max"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

  create_table "vehicles", :force => true do |t|
    t.string   "name"
    t.integer  "cost"
    t.integer  "front"
    t.integer  "side"
    t.integer  "rear"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
