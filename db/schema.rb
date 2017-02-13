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

ActiveRecord::Schema.define(version: 20170210204207) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contact_us", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "subject"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string   "title"
    t.string   "image"
    t.text     "description"
    t.string   "slug"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "member_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "joint_member_teams", force: :cascade do |t|
    t.integer  "member_id"
    t.integer  "team_id"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "joint_member_teams", ["member_id"], name: "index_joint_member_teams_on_member_id", using: :btree
  add_index "joint_member_teams", ["team_id"], name: "index_joint_member_teams_on_team_id", using: :btree

  create_table "members", force: :cascade do |t|
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
    t.string   "name"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.integer  "invitations_count",      default: 0
  end

  add_index "members", ["email"], name: "index_members_on_email", unique: true, using: :btree
  add_index "members", ["invitation_token"], name: "index_members_on_invitation_token", unique: true, using: :btree
  add_index "members", ["invitations_count"], name: "index_members_on_invitations_count", using: :btree
  add_index "members", ["invited_by_id"], name: "index_members_on_invited_by_id", using: :btree
  add_index "members", ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true, using: :btree

  create_table "memberships", force: :cascade do |t|
    t.string   "group"
    t.string   "name"
    t.string   "email"
    t.string   "number"
    t.string   "accept"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.string   "message"
    t.integer  "read"
    t.integer  "type_notification"
    t.integer  "member_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "rating"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "member_id"
    t.integer  "game_id"
  end

  create_table "tallies", force: :cascade do |t|
    t.string   "name"
    t.integer  "head"
    t.integer  "body"
    t.integer  "total"
    t.string   "kills"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "group_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "level"
    t.text     "intro"
    t.string   "equipment"
    t.string   "logo"
    t.string   "banner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "alias"
    t.string   "city"
    t.string   "country"
    t.string   "slug"
    t.integer  "status"
  end

  add_index "teams", ["slug"], name: "index_teams_on_slug", unique: true, using: :btree

  add_foreign_key "joint_member_teams", "members"
  add_foreign_key "joint_member_teams", "teams"
end
