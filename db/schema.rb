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

ActiveRecord::Schema.define(version: 2019_07_27_172100) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "anime_characters", force: :cascade do |t|
    t.bigint "character_id"
    t.bigint "anime_id"
    t.index ["anime_id"], name: "index_anime_characters_on_anime_id"
    t.index ["character_id"], name: "index_anime_characters_on_character_id"
  end

  create_table "animes", force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
    t.date "premiere_date"
    t.text "description"
    t.string "link"
    t.string "picture"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "weight"
    t.integer "height"
    t.text "aliases"
    t.string "talent"
    t.date "birthday"
    t.text "backstory"
    t.string "link"
    t.string "picture"
    t.bigint "games_id"
    t.index ["games_id"], name: "index_characters_on_games_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
    t.date "release_date"
    t.text "description"
    t.string "link"
    t.string "picture"
  end

end
