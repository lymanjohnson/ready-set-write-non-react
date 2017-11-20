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

ActiveRecord::Schema.define(version: 20171114202432) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "card_templates", force: :cascade do |t|
    t.string "flavor"
    t.text "tooltip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "game_card_traits", force: :cascade do |t|
    t.text "hint"
    t.text "default_body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "game_card_id"
    t.bigint "trait_template_id"
    t.bigint "play_trait_answer_id"
    t.index ["game_card_id"], name: "index_game_card_traits_on_game_card_id"
    t.index ["play_trait_answer_id"], name: "index_game_card_traits_on_play_trait_answer_id"
    t.index ["trait_template_id"], name: "index_game_card_traits_on_trait_template_id"
  end

  create_table "game_cards", force: :cascade do |t|
    t.text "hint"
    t.text "default_body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "game_id"
    t.bigint "card_template_id"
    t.bigint "play_card_answer_id"
    t.index ["card_template_id"], name: "index_game_cards_on_card_template_id"
    t.index ["game_id"], name: "index_game_cards_on_game_id"
    t.index ["play_card_answer_id"], name: "index_game_cards_on_play_card_answer_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "title"
    t.text "prompt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "play_card_answers", force: :cascade do |t|
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "play_id"
    t.index ["play_id"], name: "index_play_card_answers_on_play_id"
  end

  create_table "play_trait_answers", force: :cascade do |t|
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "play_card_answer_id"
    t.index ["play_card_answer_id"], name: "index_play_trait_answers_on_play_card_answer_id"
  end

  create_table "plays", force: :cascade do |t|
    t.text "response"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "game_id"
    t.index ["game_id"], name: "index_plays_on_game_id"
    t.index ["user_id"], name: "index_plays_on_user_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "play_card_answer_id"
    t.bigint "other_card_id"
    t.index ["other_card_id"], name: "index_relationships_on_other_card_id"
    t.index ["play_card_answer_id"], name: "index_relationships_on_play_card_answer_id"
  end

  create_table "trait_templates", force: :cascade do |t|
    t.text "flavor"
    t.text "tooltip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "subscription"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "game_card_traits", "game_cards"
  add_foreign_key "game_card_traits", "play_trait_answers"
  add_foreign_key "game_card_traits", "trait_templates"
  add_foreign_key "game_cards", "card_templates"
  add_foreign_key "game_cards", "games"
  add_foreign_key "game_cards", "play_card_answers"
  add_foreign_key "play_card_answers", "plays"
  add_foreign_key "play_trait_answers", "play_card_answers"
  add_foreign_key "plays", "games"
  add_foreign_key "plays", "users"
end
