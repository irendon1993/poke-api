# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_06_14_180708) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "game2s", force: :cascade do |t|
    t.string "game_state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "active_trainer"
  end

  create_table "game_states", force: :cascade do |t|
    t.string "game_state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string "game_state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "masters", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.json "poke_party", default: []
    t.string "currentZone"
    t.string "current_pokemon"
    t.json "pc", default: []
    t.json "pic_array", default: []
    t.string "pokeballs"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "pokeid"
    t.string "name"
    t.string "iamgeurl"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "zones", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.json "wild_pokemon", default: []
    t.json "directions", default: []
    t.json "next_zone", default: []
    t.string "zone_description"
  end

end
