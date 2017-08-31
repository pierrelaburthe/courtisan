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

ActiveRecord::Schema.define(version: 20170830092352) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "challenges", force: :cascade do |t|
    t.bigint "seducer1_id"
    t.bigint "seducer2_id"
    t.bigint "seduced_id"
    t.bigint "winner_id"
    t.integer "current_round"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["seduced_id"], name: "index_challenges_on_seduced_id"
    t.index ["seducer1_id"], name: "index_challenges_on_seducer1_id"
    t.index ["seducer2_id"], name: "index_challenges_on_seducer2_id"
    t.index ["winner_id"], name: "index_challenges_on_winner_id"
  end

  create_table "chatrooms", force: :cascade do |t|
    t.bigint "seducer_id"
    t.bigint "seduced_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["seduced_id"], name: "index_chatrooms_on_seduced_id"
    t.index ["seducer_id"], name: "index_chatrooms_on_seducer_id"
  end

  create_table "discussions", force: :cascade do |t|
    t.bigint "chatroom_id"
    t.string "content"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chatroom_id"], name: "index_discussions_on_chatroom_id"
    t.index ["user_id"], name: "index_discussions_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "user_id"
    t.string "content"
    t.bigint "challenge_id"
    t.integer "liked"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["challenge_id"], name: "index_messages_on_challenge_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gender"
    t.string "first_name"
    t.string "last_name"
    t.string "i_am"
    t.string "i_like"
    t.string "i_look_for"
    t.string "status"
    t.integer "victories"
    t.integer "defeats"
    t.integer "age"
    t.string "provider"
    t.string "uid"
    t.string "facebook_picture_url"
    t.string "token"
    t.datetime "token_expiry"
    t.string "attracted_by"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "waiting_lists", force: :cascade do |t|
    t.bigint "seduced_id"
    t.bigint "seducer1_id"
    t.bigint "seducer2_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "challenge_ready"
    t.index ["seduced_id"], name: "index_waiting_lists_on_seduced_id"
    t.index ["seducer1_id"], name: "index_waiting_lists_on_seducer1_id"
    t.index ["seducer2_id"], name: "index_waiting_lists_on_seducer2_id"
  end

  add_foreign_key "challenges", "users", column: "seduced_id"
  add_foreign_key "challenges", "users", column: "seducer1_id"
  add_foreign_key "challenges", "users", column: "seducer2_id"
  add_foreign_key "challenges", "users", column: "winner_id"
  add_foreign_key "chatrooms", "users", column: "seduced_id"
  add_foreign_key "chatrooms", "users", column: "seducer_id"
  add_foreign_key "discussions", "chatrooms"
  add_foreign_key "discussions", "users"
  add_foreign_key "messages", "challenges"
  add_foreign_key "messages", "users"
  add_foreign_key "waiting_lists", "users", column: "seduced_id"
  add_foreign_key "waiting_lists", "users", column: "seducer1_id"
  add_foreign_key "waiting_lists", "users", column: "seducer2_id"
end
