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

ActiveRecord::Schema.define(version: 20170503090451) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "matches", force: :cascade do |t|
    t.string   "team1_id"
    t.string   "team2_id"
    t.date     "match_date"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "team1_score"
    t.string   "team2_score"
    t.string   "winner"
    t.string   "match_result"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.float    "point"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "players", ["team_id"], name: "index_players_on_team_id", using: :btree

  create_table "points", force: :cascade do |t|
    t.string   "name"
    t.string   "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "team_player_scores", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "player_id"
    t.integer  "match_id"
    t.string   "score"
    t.string   "run"
    t.string   "wicket"
    t.string   "catch"
    t.string   "run_out"
    t.string   "stumpig"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "team_player_scores", ["match_id"], name: "index_team_player_scores_on_match_id", using: :btree
  add_index "team_player_scores", ["player_id"], name: "index_team_player_scores_on_player_id", using: :btree
  add_index "team_player_scores", ["team_id"], name: "index_team_player_scores_on_team_id", using: :btree

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "owner"
    t.string   "home_ground"
    t.string   "captain"
    t.string   "coach"
    t.string   "official_team_site"
    t.string   "rank"
    t.float    "point"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "user_teams", force: :cascade do |t|
    t.integer  "user_id"
    t.hstore   "player"
    t.string   "power_player"
    t.integer  "match_id"
    t.float    "total_score"
    t.string   "rank"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "user_teams", ["match_id"], name: "index_user_teams_on_match_id", using: :btree
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "players", "teams"
  add_foreign_key "team_player_scores", "matches"
  add_foreign_key "team_player_scores", "players"
  add_foreign_key "team_player_scores", "teams"
  add_foreign_key "user_teams", "matches"
  add_foreign_key "user_teams", "users"
end
