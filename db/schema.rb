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

ActiveRecord::Schema.define(version: 20170510095426) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "franchises", force: :cascade do |t|
    t.string   "name"
    t.string   "owner_name"
    t.string   "captain"
    t.float    "point"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "ranking"
  end

  create_table "matches", force: :cascade do |t|
    t.date     "match_date"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "team1_score"
    t.string   "team2_score"
    t.string   "match_result"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "winner"
    t.float    "team1_over"
    t.float    "team2_over"
    t.string   "toss"
    t.integer  "team1_id"
    t.integer  "team2_id"
    t.integer  "match_player"
  end

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "franchise_id"
    t.string   "role"
    t.boolean  "capped",       default: true
    t.boolean  "indian",       default: false
  end

  add_index "players", ["franchise_id"], name: "index_players_on_franchise_id", using: :btree

  create_table "score_cards", force: :cascade do |t|
    t.integer  "run_scored"
    t.integer  "ball_played"
    t.integer  "four"
    t.integer  "six"
    t.integer  "over"
    t.integer  "maiden"
    t.integer  "run_given"
    t.integer  "wicket"
    t.integer  "catch"
    t.integer  "run_out"
    t.integer  "stump"
    t.integer  "player_id"
    t.integer  "match_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "score_cards", ["match_id"], name: "index_score_cards_on_match_id", using: :btree
  add_index "score_cards", ["player_id"], name: "index_score_cards_on_player_id", using: :btree

  create_table "user_teams", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "match_id"
    t.float    "total_score"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.boolean  "power_player",   default: false
    t.integer  "player_id"
    t.integer  "bowling_point"
    t.integer  "batting_point"
    t.integer  "fielding_point"
  end

  add_index "user_teams", ["match_id"], name: "index_user_teams_on_match_id", using: :btree
  add_index "user_teams", ["player_id"], name: "index_user_teams_on_player_id", using: :btree
  add_index "user_teams", ["user_id"], name: "index_user_teams_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",                   default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "display_name"
    t.string   "team_name"
    t.integer  "total_point"
    t.integer  "ranking"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "score_cards", "matches"
  add_foreign_key "score_cards", "players"
  add_foreign_key "user_teams", "matches"
  add_foreign_key "user_teams", "users"
end
